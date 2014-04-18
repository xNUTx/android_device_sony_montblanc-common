LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),montblanc)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
