$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/d851/d851-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/d851/overlay

LOCAL_PATH := device/lge/d851

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_d851
PRODUCT_DEVICE := d851

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.g3.rc:root/init.g3.rc \
    $(LOCAL_PATH)/rootdir/ueventd.g3.rc:root/ueventd.g3.rc \
    $(LOCAL_PATH)/rootdir/fstab.g3:root/fstab.g3


# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

PRODUCT_PACKAGES += \
    libxml2
#    libbson \
#    libcurl \

# Misc dependency packages
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    curl \
    libnl_2 \
    libbson

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay


# Lights
PRODUCT_PACKAGES += \
    lights.msm8974


# Power
PRODUCT_PACKAGES += \
    power.msm8974


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
