# Platform
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_SPECIFIC_HEADER_PATH := device/sony/montblanc-common/include
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE


# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true


# RIL implementation
BOARD_RIL_CLASS := ../../../device/sony/montblanc-common/telephony-common/


# Kernel information
BOARD_FORCE_RAMDISK_ADDRESS := 0x41200000
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RECOVERY_BASE := 0x40200000
TARGET_KERNEL_SOURCE := kernel/sony/u8500
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3


# Bluetooth
BOARD_HAVE_BLUETOOTH := true


# Audio
BOARD_USES_ALSA_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true


# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
USES_TI_MAC80211 := true
ANDROID_P2P := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211 -DANDROID_P2P


# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB


# Graphics
BOARD_EGL_CFG := device/sony/montblanc-common/config/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW -DBOARD_EGL_NEEDS_LEGACY_FB


# Misc
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS


# FM Radio
COMMON_GLOBAL_CFLAGS += -DAUDIO_EXTN_FM_ENABLED


# Lights
TARGET_PROVIDES_LIBLIGHTS := true


# Custom boot
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/sony/montblanc-common/recovery/recovery-keys.c
BOARD_CUSTOM_BOOTIMG_MK := device/sony/montblanc-common/custombootimg.mk
BOARD_USE_CUSTOM_RECOVERY_FONT := \"lucidaconsole_10x18.h\"
RECOVERY_NAME := CWM-Montblanc
RECOVERY_FSTAB_VERSION := 2
TARGET_PROVIDES_INIT_RC := true
TARGET_RECOVERY_PRE_COMMAND := "/system/bin/touch /cache/recovery/boot; /system/bin/sync;"
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/sony/montblanc-common/releasetools/semc_ota_from_target_files
