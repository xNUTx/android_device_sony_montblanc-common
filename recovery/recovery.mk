# for cwm touch only

PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/recovery/res/images/a0.png:recovery/root/res/images/a0.png \
    device/sony/montblanc-common/recovery/res/images/a1.png:recovery/root/res/images/a1.png \
    device/sony/montblanc-common/recovery/res/images/a2.png:recovery/root/res/images/a2.png \
    device/sony/montblanc-common/recovery/res/images/a3.png:recovery/root/res/images/a3.png \
    device/sony/montblanc-common/recovery/res/images/a4.png:recovery/root/res/images/a4.png \
    device/sony/montblanc-common/recovery/res/images/a5.png:recovery/root/res/images/a5.png \
    device/sony/montblanc-common/recovery/res/images/a6.png:recovery/root/res/images/a6.png \
    device/sony/montblanc-common/recovery/res/images/a7.png:recovery/root/res/images/a7.png \
    device/sony/montblanc-common/recovery/res/images/a8.png:recovery/root/res/images/a8.png \
    device/sony/montblanc-common/recovery/res/images/a9.png:recovery/root/res/images/a9.png \
    device/sony/montblanc-common/recovery/res/images/a10.png:recovery/root/res/images/a10.png \
    device/sony/montblanc-common/recovery/res/images/at.png:recovery/root/res/images/at.png \
    device/sony/montblanc-common/recovery/res/images/ap.png:recovery/root/res/images/ap.png

ifeq ($(TARGET_PRODUCT),cm_lotus)
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/recovery/res/images/stitch_go.png:recovery/root/res/images/stitch_go.png
endif

ifeq ($(TARGET_PRODUCT),cm_pepper)
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/recovery/res/images/stitch_sola.png:recovery/root/res/images/stitch_sola.png
endif

ifeq ($(TARGET_PRODUCT),cm_kumquat)
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/recovery/res/images/stitch_u.png:recovery/root/res/images/stitch_u.png
endif

ifeq ($(TARGET_PRODUCT),cm_nypon)
PRODUCT_COPY_FILES += \
    device/sony/montblanc-common/recovery/res/images/stitch_p.png:recovery/root/res/images/stitch_p.png
endif
