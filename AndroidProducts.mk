#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# List product makefiles for this device
PRODUCT_MAKEFILES := \
    $(LOCAL_PATH)/omni_Asteroids.mk \
    $(LOCAL_PATH)/twrp_Asteroids.mk

# Modern lunch targets (replaces legacy add_lunch_combo usage)
COMMON_LUNCH_CHOICES := \
    omni_Asteroids-user \
    omni_Asteroids-userdebug \
    omni_Asteroids-eng \
    twrp_Asteroids-user \
    twrp_Asteroids-userdebug \
    twrp_Asteroids-eng
