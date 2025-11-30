# TWRP/OrangeFox product makefile for Nothing Phone 3a (Asteroids)

PRODUCT_RELEASE_NAME := Asteroids
PRODUCT_DEVICE       := Asteroids
PRODUCT_NAME         := twrp_Asteroids
PRODUCT_BRAND        := Nothing
PRODUCT_MODEL        := Nothing Phone 3a
PRODUCT_MANUFACTURER := Nothing

# Use the common embedded/64-bit configuration
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device-specific configuration
$(call inherit-product, device/nothing/Asteroids/device.mk)
