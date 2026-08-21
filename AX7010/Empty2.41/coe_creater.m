%% ============================================================================
% coe_creater.m
% 功能：生成 Vivado Block RAM IP 初始化所需的 .coe 文件
% 说明：
%   - 1024 个采样点，量化为 14 位无符号数 (0 ~ 16383)
%   - 输出完整一个周期的波形
%   - 通过宏定义 WAVE_TYPE 切换波形类型：
%       0 — 正弦波 (Sine Wave)
%       1 — 三角波 (Triangle Wave)
%===============================================================================

clear; clc; close all;

%% ======================== 宏定义参数（用户可修改）===============================
WAVE_TYPE     = 0;        % 波形类型：0=正弦波, 1=三角波
DATA_DEPTH    = 4096;     % 采样点数（RAM 深度）
DATA_WIDTH    = 16;       % 量化位宽
FILE_NAME     = 'waveform_4096x16bit';  % 输出文件名（不含扩展名）

%% ======================== 波形数据生成 ========================================
n = 0 : (DATA_DEPTH - 1);           % 采样索引 0 ~ 1023

switch WAVE_TYPE
    case 0
        % --- 正弦波：一个完整周期 0 ~ 2*pi ---
        raw_wave = sin(2 * pi * n / DATA_DEPTH);
        wave_name = 'Sine';

    case 1
        % --- 三角波：从 0 线性上升到最大值，再线性下降到最小值 ---
        half_point = DATA_DEPTH / 2;        % 512，波形对称中心
        % 前半段：0 → +1, 后半段：+1 → 0
        raw_wave = zeros(1, DATA_DEPTH);
        for i = 1:DATA_DEPTH
            if n(i) < half_point
                raw_wave(i) = n(i) / half_point;           % 0 → 1
            else
                raw_wave(i) = 2 - n(i) / half_point;       % 1 → 0
            end
        end
        % 偏移到 -1 ~ +1 范围
        raw_wave = raw_wave * 2 - 1;        % 映射到 [-1, +1]
        wave_name = 'Triangle';

    otherwise
        error('WAVE_TYPE 参数无效，请设置为 0（正弦波）或 1（三角波）。');
end

%% ======================== 量化 ================================================
% 14 位无符号数范围：0 ~ 2^14 - 1 = 0 ~ 16383
max_val   = 2^DATA_WIDTH - 1;                % 16383
mid_val   = max_val / 2;                     % 8191.5, 直流偏置中点

% 将 [-1, +1] 范围的波形映射到 [0, max_val]
quantized_wave = round(mid_val + mid_val * raw_wave);

% 钳位保护（防止舍入误差导致越界）
quantized_wave(quantized_wave < 0)      = 0;
quantized_wave(quantized_wave > max_val) = max_val;

%% ======================== 生成 .coe 文件 ======================================
% 将 .coe 文件输出到本脚本所在目录
script_dir = fileparts(mfilename('fullpath'));
if isempty(script_dir)
    script_dir = pwd;   % 若直接粘贴运行（非脚本文件），回退到当前工作目录
end
coe_file = fullfile(script_dir, [FILE_NAME, '.coe']);
fid = fopen(coe_file, 'w');
if fid == -1
    error('无法创建文件 %s，请检查路径权限。', coe_file);
end

% --- COE 文件头部 ---
fprintf(fid, '; ============================================================\n');
fprintf(fid, '; Vivado Block RAM initialization COE file\n');
fprintf(fid, '; Waveform : %s Wave\n', wave_name);
fprintf(fid, '; Depth    : %d samples\n', DATA_DEPTH);
fprintf(fid, '; Width    : %d bits (0 ~ %d)\n', DATA_WIDTH, max_val);
fprintf(fid, '; Generated: %s\n', datestr(now, 'yyyy-mm-dd HH:MM:SS'));
fprintf(fid, '; ============================================================\n\n');

% --- 数值基数（10 进制）---
fprintf(fid, 'memory_initialization_radix = 10;\n\n');

% --- 数据向量 ---
fprintf(fid, 'memory_initialization_vector =\n');

% 每行输出 8 个数据，以逗号分隔
NUM_PER_LINE = 8;
for i = 1 : DATA_DEPTH
    if mod(i, NUM_PER_LINE) == 1
        fprintf(fid, '    ');               % 行首缩进
    end
    fprintf(fid, '%-5d', quantized_wave(i));
    if i < DATA_DEPTH
        fprintf(fid, ', ');
    end
    if mod(i, NUM_PER_LINE) == 0
        fprintf(fid, '\n');
    end
end

% 若最后一行不满则补上换行和分号结束
if mod(DATA_DEPTH, NUM_PER_LINE) ~= 0
    fprintf(fid, '\n');
end
fprintf(fid, ';');

fclose(fid);
fprintf('✅ .coe 文件已生成：%s\n', coe_file);

%% ======================== 绘制波形预览（可选）==================================
figure;
plot(n, quantized_wave, 'b-', 'LineWidth', 1.2);
hold on;
plot(n, quantized_wave, 'r.', 'MarkerSize', 4);
grid on;
xlabel('Sample Index');
ylabel('Quantized Value (14-bit unsigned)');
title(sprintf('%s Wave — %d samples, %d-bit Quantization', wave_name, DATA_DEPTH, DATA_WIDTH));
xlim([0, DATA_DEPTH - 1]);
ylim([0, max_val]);

% 标出中点线
yline(mid_val, 'k--', 'Midpoint (8191.5)');
legend('Waveform', 'Sample Points', 'Location', 'best');

fprintf('波形预览已绘制。\n');
