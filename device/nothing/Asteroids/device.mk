#!/bin/true
# Device makefile moved into its expected path so omni_Asteroids.mk can inherit-product it.
# SPDX-License-Identifier: Apache-2.0

# Path base for this device tree
LOCAL_PATH := $(call my-dir)

# A/B OTA postinstall
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.volcano

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.volcano \
    libgptutils \
    libz \
    libcutils

# Postinstall / update bits
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# NOTE:
# Do NOT add recovery.fstab to PRODUCT_COPY_FILES here.
# OrangeFox/TWRP will pick up the fstab from recovery/root/etc/recovery.fstab
# in your device tree overlay.
