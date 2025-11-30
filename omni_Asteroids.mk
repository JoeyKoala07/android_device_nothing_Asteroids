PRODUCT_RELEASE_NAME := Asteroids
PRODUCT_DEVICE := Asteroids
PRODUCT_NAME := omni_Asteroids
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := Nothing Phone 3a
PRODUCT_MANUFACTURER := Nothing

$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/nothing/Asteroids/device.mk)
