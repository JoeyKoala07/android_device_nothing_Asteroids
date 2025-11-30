LOCAL_PATH := $(call my-dir)

# List all product makefiles for this device
PRODUCT_MAKEFILES := \
    $(LOCAL_PATH)/omni_Asteroids.mk \
    $(LOCAL_PATH)/twrp_Asteroids.mk

# Modern lunch targets (replaces old add_lunch_combo)
COMMON_LUNCH_CHOICES := \
    omni_Asteroids-eng \
    twrp_Asteroids-eng
