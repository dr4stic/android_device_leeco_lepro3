$(call inherit-product, device/leeco/zl1/full_zl1.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := cm_zl1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="zl1" \
    PRODUCT_NAME="h1_tmo_us" \
    BUILD_FINGERPRINT="LeEco/le_zl1/LePro3:6.0.1/MMB29M/362280:user/release-keys" \
    PRIVATE_BUILD_DESC="LePro3-user 6.0.1 MMB29M 24 dev-keys"
