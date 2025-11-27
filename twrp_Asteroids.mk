#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from Asteroids device
$(call inherit-product, device/nothing/Asteroids/device.mk)

PRODUCT_NAME := twrp_Asteroids
PRODUCT_DEVICE := Asteroids
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := Nothing Phone (3a)
PRODUCT_MANUFACTURER := Nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Asteroids-user 14 UKQ1.241011.001 2507171803 release-keys"

BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:14/UKQ1.241011.001/2507171803:user/release-keys
