# Omni product definition for Nothing Phone 3a (Asteroids)

PRODUCT_RELEASE_NAME := Asteroids
PRODUCT_DEVICE       := Asteroids
PRODUCT_NAME         := omni_Asteroids
PRODUCT_BRAND        := Nothing
PRODUCT_MODEL        := Nothing Phone 3a
PRODUCT_MANUFACTURER := Nothing

# Match your Android 15 build (3.2 - 250924-1736)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Asteroids-user 15 AQ3A.241015.001 2509241736 release-keys"

BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:15/AQ3A.241015.001/2509241736:user/release-keys

# Inherit common config
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit device-specific configuration
$(call inherit-product, device/nothing/Asteroids/device.mk)
