# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := carbon_xt1034

$(call inherit-product, device/motorola/xt1034/full_xt1034.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT1034 \
    BUILD_PRODUCT=falcon_umts \
    BUILD_FINGERPRINT=motorola/falcon_retuaws/falcon_umts:4.4.2/KXB20.9-1.8-1.4/4:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.xt1034.$(shell date +%m%d%y).$(shell date +%H%M%S)	