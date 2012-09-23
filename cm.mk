## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mid1125

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/coby/mid1125/device_mid1125.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mid1125
PRODUCT_NAME := cm_mid1125
PRODUCT_BRAND := coby
PRODUCT_MODEL := mid1125
PRODUCT_MANUFACTURER := coby
