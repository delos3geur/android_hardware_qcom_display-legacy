#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifeq ($(call my-dir),$(call project-path-for,qcom-display))

display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils libtilerenderer

ifneq ($(TARGET_PROVIDES_LIBLIGHTS),true)
display-hals += liblight
endif

include $(call all-named-subdir-makefiles,$(display-hals))

endif
