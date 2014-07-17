## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := d851

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d851/device_d851.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d851
PRODUCT_NAME := cm_d851
PRODUCT_BRAND := lge
PRODUCT_MODEL := d851
PRODUCT_MANUFACTURER := lge
