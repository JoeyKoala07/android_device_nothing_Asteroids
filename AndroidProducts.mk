#
# Android products for Nothing Phone 3a (Asteroids)
#

LOCAL_PATH := $(call my-dir)

# List product makefiles for this device
PRODUCT_MAKEFILES := \
    $(LOCAL_PATH)/omni_Asteroids.mk \
    $(LOCAL_PATH)/twrp_Asteroids.mk

# Modern lunch targets (replaces add_lunch_combo in vendorsetup.sh)
COMMON_LUNCH_CHOICES := \
    omni_Asteroids-eng \
    omni_Asteroids-userdebug \
    omni_Asteroids-user \
    twrp_Asteroids-eng \
    twrp_Asteroids-userdebug \
    twrp_Asteroids-user
