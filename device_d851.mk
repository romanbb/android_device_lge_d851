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