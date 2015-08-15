## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := K1_turbo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fly/iq446/device_iq446.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := iq446
PRODUCT_NAME := cm_iq446
PRODUCT_BRAND := Fly
PRODUCT_MODEL := Magic
PRODUCT_MANUFACTURER := Fly
