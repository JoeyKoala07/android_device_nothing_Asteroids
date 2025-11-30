# TWRP product definition for Nothing Phone 3a (Asteroids)

PRODUCT_NAME         := twrp_Asteroids
PRODUCT_DEVICE       := Asteroids
PRODUCT_BRAND        := Nothing
PRODUCT_MODEL        := Nothing Phone 3a
PRODUCT_MANUFACTURER := Nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Asteroids-user 15 AQ3A.241015.001 2509241736 release-keys"

BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:15/AQ3A.241015.001/2509241736:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-nothing

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/nothing/Asteroids/device.mk)
