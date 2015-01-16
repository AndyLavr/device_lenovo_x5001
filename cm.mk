## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := X5001

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/x5001/device_x5001.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5001
PRODUCT_NAME := cm_x5001
PRODUCT_BRAND := MEDION
PRODUCT_MODEL := X5001
PRODUCT_MANUFACTURER := LENOVO
