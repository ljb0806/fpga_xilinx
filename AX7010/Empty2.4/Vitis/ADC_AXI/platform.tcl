# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\Data\Project\VIVADO_Project\2022_2\AX7010\Empty2.1\Vitis\ADC_AXI\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\Data\Project\VIVADO_Project\2022_2\AX7010\Empty2.1\Vitis\ADC_AXI\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ADC_AXI}\
-hw {E:\Data\Project\VIVADO_Project\2022_2\AX7010\Empty2.1\ADC_AXI.xsa}\
-out {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {ADC_AXI}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/ADC_AXI.xsa}
platform generate -domains 
platform active {ADC_AXI}
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.2/ADC_AXI.xsa}
platform generate -domains 
platform active {ADC_AXI}
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
platform config -updatehw {E:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/ADC_AXI.xsa}
platform generate -domains 
