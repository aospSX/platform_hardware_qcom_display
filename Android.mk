ifeq ($(BOARD_USES_QCOM_HARDWARE),true)

display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils libqservice

include $(call all-named-subdir-makefiles,$(display-hals))
endif
