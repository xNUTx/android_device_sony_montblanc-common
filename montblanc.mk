# Inherit from AOSP
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

ifeq ($(TARGET_PRODUCT),full_lotus,full_pepper,full_kumquat)
# Inherit from the vendor common montblanc definitions
$(call inherit-product-if-exists, vendor/sony/montblanc-common/montblanc-common-vendor.mk)
endif

# Common montblanc headers
TARGET_SPECIFIC_HEADER_PATH := device/sony/montblanc-common/include

# Commons montblanc libraries
include $(call all-subdir-makefiles, vendor/sony/montblanc-common/hardware)

# Common montblanc settings overlays
DEVICE_PACKAGE_OVERLAYS += device/sony/montblanc-common/overlay

# Common montblanc features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


# Configuration files
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/media_codecs.xml:system/etc/media_codecs.xml \
        device/sony/montblanc-common/config/egl.cfg:system/lib/egl/egl.cfg \
        device/sony/montblanc-common/config/asound.conf:system/etc/asound.conf \
        device/sony/montblanc-common/config/hostapd.conf:system/etc/wifi/hostapd.conf \
        device/sony/montblanc-common/config/01stesetup:system/etc/init.d/01stesetup \
        device/sony/montblanc-common/config/10wireless:system/etc/init.d/10wireless \
        device/sony/montblanc-common/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf


# Filesystem management tools
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs \
        e2fsck

	
# Hostapd
PRODUCT_PACKAGES += \
        hostapd_cli \
        hostapd


# Lights HAL library
PRODUCT_PACKAGES += lights.montblanc


# b2r2lib
PRODUCT_PACKAGES += libblt_hw

 
# libomxil-bellagio
PRODUCT_PACKAGES += libomxil-bellagio
    
    
# libtinyalsa & audio.usb.default
PRODUCT_PACKAGES += \
       tinyalsa \
       libtinyalsa \
       audio_policy.default \
       audio.usb.default

       
# WiFi config utility
PRODUCT_PACKAGES += iw

       
# libaudioparameter
PRODUCT_PACKAGES += libaudioparameter

# Hostapd
PRODUCT_PACKAGES += \
       hostapd_cli \
       hostapd

       
# Dbus
PRODUCT_PACKAGES += libdbus

       
# lib_net_iface_cmd
PRODUCT_PACKAGES += libnetcmdiface
       

# Libasound
PRODUCT_PACKAGES += libasound


#FM Radio
# We must adapt Qualcomm FM Radio app


# File Manager
PRODUCT_PACKAGES += CMFileManager


# Torch
PRODUCT_PACKAGES += Torch


# Misc
PRODUCT_PACKAGES += com.android.future.usb.accessory


# Custom init scripts
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/init.rc:root/init.rc \
        device/sony/montblanc-common/config/fstab.st-ericsson:root/fstab.st-ericsson \
        device/sony/montblanc-common/config/init.environ.rc:root/init.environ.rc \
        device/sony/montblanc-common/config/init.st-ericsson.rc:root/init.st-ericsson.rc \
        device/sony/montblanc-common/config/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc  


# Post recovery script
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh \
        device/sony/montblanc-common/config/modelid_cfg.sh:system/bin/modelid_cfg.sh


# Hardware configuration scripts
PRODUCT_COPY_FILES += \
        device/sony/montblanc-common/config/omxloaders:system/etc/omxloaders \
        device/sony/montblanc-common/config/ril_config:system/etc/ril_config \
        device/sony/montblanc-common/config/install_wlan.sh:system/bin/install_wlan.sh \
        device/sony/montblanc-common/config/ste_modem.sh:system/etc/ste_modem.sh \
        device/sony/montblanc-common/config/gps.conf:system/etc/gps.conf
   
   
# Generic proprieties
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_PROPERTY_OVERRIDES += \
        sys.mem.max_hidden_apps=5 \
        wifi.interface=wlan0

        
# RIL configuration
PRODUCT_PROPERTY_OVERRIDES += \
        rild.libargs="-c UNIX -n 2 -p /dev/socket/at_core -s /dev/socket/at_core -i rmnet" \
        rild.libpath=/system/lib/libu300-ril.so \
        ro.telephony.ril_class=SonyU8500RIL \
        ro.telephony.call_ring.multiple=false


# OpenGL ES API version (131072 = 2.0)
PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version=131072


# Debug compositor (0 = b2r2, 1 = Mali)
PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw=1


# EGL miscellaneous
PRODUCT_PROPERTY_OVERRIDES += \
        ro.zygote.disable_gl_preload=true \
        debug.hwui.render_dirty_regions=false \
        hwui.render_dirty_regions=false


# Disable Strict Mode
PRODUCT_PROPERTY_OVERRIDES += \
        persist.sys.strictmode.disable=true \
        persist.sys.strictmode.visual=false


# Low power audio
PRODUCT_PROPERTY_OVERRIDES += ste.nmf.autoidle=true


# Fast Dormancy
PRODUCT_PROPERTY_OVERRIDES += ste.special_fast_dormancy=false


# Audio configuration
PRODUCT_PROPERTY_OVERRIDES += \
        persist.audio.hp=true \
        ro.sound.driver=alsa 

