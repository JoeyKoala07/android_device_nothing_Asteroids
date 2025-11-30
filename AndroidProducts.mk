#
# Android products for Nothing Phone 3a (Asteroids)
#

LOCAL_PATH := $(call my-dir)

PRODUCT_MAKEFILES := \
    $(LOCAL_PATH)/omni_Asteroids.mk \
    $(LOCAL_PATH)/twrp_Asteroids.mk

# No COMMON_LUNCH_CHOICES needed for CI
