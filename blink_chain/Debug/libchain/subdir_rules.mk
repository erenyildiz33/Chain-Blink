################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
libchain/%.o: ../libchain/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"D:/Programlar/ti/ccs920/ccs/tools/compiler/msp430-gcc-8.3.0.16_win32/bin/msp430-elf-gcc-8.3.0.exe" -c -mmcu=msp430fr5994 -mhwmult=f5series -I"D:/Programlar/ti/ccs920/ccs/ccs_base/msp430/include_gcc" -I"D:/Workspaces/CodecCmposer/blink/blink_chain/libchain" -I"D:/Workspaces/CodecCmposer/blink/blink_chain/libchain/include" -I"D:/Workspaces/CodecCmposer/blink/blink_chain" -I"D:/Programlar/ti/ccs920/ccs/tools/compiler/msp430-gcc-8.3.0.16_win32/msp430-elf/include" -Og -g -gdwarf-3 -gstrict-dwarf -Wall -mlarge -mcode-region=none -mdata-region=none -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


