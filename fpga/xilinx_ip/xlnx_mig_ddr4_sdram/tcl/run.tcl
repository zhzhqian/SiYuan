set partNumber $::env(XILINX_PART)
set boardName  $::env(XILINX_BOARD)
set boardNameShort $::env(BOARD)

set ipName xlnx_mig_ddr4_sdram

create_project $ipName . -force -part $partNumber
set_property board_part $boardName [current_project]


create_ip -name ddr4 -vendor xilinx.com -library ip -version 2.2 -module_name $ipName
set_property -dict [list \
  CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {None} \
  CONFIG.C0.DDR4_AxiIDWidth {5} \
  CONFIG.C0.DDR4_AxiSelection {true} \
  CONFIG.C0.DDR4_DataWidth {64} \
  CONFIG.C0.DDR4_InputClockPeriod {3332} \
  CONFIG.C0.DDR4_MemoryPart {MT40A256M16LY-062E} \
  CONFIG.C0.DDR4_TimePeriod {833} \
  CONFIG.C0_CLOCK_BOARD_INTERFACE {user_si570_sysclk} \
  CONFIG.C0_DDR4_BOARD_INTERFACE {ddr4_sdram_062} \
  CONFIG.RESET_BOARD_INTERFACE {reset} \
] [get_ips $ipName]

generate_target {instantiation_template} [get_files ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
generate_target all [get_files  ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
launch_run -jobs 8 ${ipName}_synth_1
wait_on_run ${ipName}_synth_1
