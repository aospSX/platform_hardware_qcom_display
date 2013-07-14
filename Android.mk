#Enables the listed display HAL modules
#Libs to be built for all targets (including SDK)
display-hals := libqcomui

#libs to be built for QCOM targets only
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
display-hals += libhwcomposer liboverlay libgralloc libgenlock libcopybit
endif

include $(call all-named-subdir-makefiles,$(display-hals))
