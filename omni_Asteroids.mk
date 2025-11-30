# OmniROM / OrangeFox product for Asteroids

# Inherit common 64-bit telephony configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from device-specific config
$(call inherit-product, device/nothing/Asteroids/device.mk)

PRODUCT_RELEASE_NAME := Asteroids
PRODUCT_DEVICE       := Asteroids
PRODUCT_NAME         := omni_Asteroids
PRODUCT_BRAND        := Nothing
PRODUCT_MODEL        := Nothing Phone 3a
PRODUCT_MANUFACTURER := Nothing

# Optional: if you want an explicit fingerprint, paste the EXACT A15 value here:
# (output of:  getprop ro.build.fingerprint  on the phone)
BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:15/AQ3A.241015.001/2509241736:user/release-keys
