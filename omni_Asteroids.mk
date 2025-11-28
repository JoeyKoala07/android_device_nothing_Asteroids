#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Asteroids device
$(call inherit-product, device/nothing/Asteroids/device.mk)

PRODUCT_DEVICE := Asteroids
PRODUCT_NAME := omni_Asteroids
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := Nothing Phone (3a)
PRODUCT_MANUFACTURER := Nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi_64-user 15 AQ3A.241015.001 2509241736 release-keys"

BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:15/AQ3A.241015.001/2509241736:user/release-keys
