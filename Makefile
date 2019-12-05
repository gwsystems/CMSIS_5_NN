################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include CMSIS_5/CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
-include CMSIS_5/CMSIS/NN/Source/PoolingFunctions/subdir.mk
-include CMSIS_5/CMSIS/NN/Source/NNSupportFunctions/subdir.mk
-include CMSIS_5/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
-include CMSIS_5/CMSIS/NN/Source/ConvolutionFunctions/subdir.mk
-include CMSIS_5/CMSIS/NN/Source/ActivationFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/TransformFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/SupportFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/FilteringFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/ControllerFunctions/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/CommonTables/subdir.mk
-include CMSIS_5/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
-include cifar10/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: cifar10

# Tool invocations
cifar10: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	gcc  -o cifar10_out $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(CXX_DEPS)$(OBJS)$(CPP_DEPS)$(C_DEPS) cifar10_out
	-@echo ' '

.PHONY: all clean dependents cifar10
.SECONDARY:

-include ../makefile.targets
