# SPDX-License-Identifier: Apache-2.0
# Main device makefile for Nothing Phone (3a) "Asteroids"
# Used by omni_Asteroids.mk / twrp_Asteroids.mk / OrangeFox builds.

# Base path for this device tree
LOCAL_PATH := $(call my-dir)

# ===================== A/B OTA =====================
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL for A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.volcano

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.volcano \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# ===================== Recovery bits =====================

# Copy our recovery fstab into the ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab
# If OrangeFox ever complains about the path, alternative is:
#   $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab
