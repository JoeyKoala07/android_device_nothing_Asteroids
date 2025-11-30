# BoardConfig for Nothing Phone (3a) – Asteroids (A059)

DEVICE_PATH := device/nothing/Asteroids

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a76

# Boot / recovery layout
TARGET_USES_UEFI := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# A/B device
BOARD_USES_AB := true
AB_OTA_PARTITIONS += \
    boot \
    vendor_boot \
    init_boot \
    dtbo

# Static partition sizes (bytes)
BOARD_BOOTIMAGE_PARTITION_SIZE        := 100663296
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMAGE_PARTITION_SIZE        := 8388608
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE  := 8388608

# Dynamic partitions
BOARD_SUPER_PARTITION_SIZE := 8388608000
BOARD_SUPER_PARTITION_GROUPS := asteroids_dynamic_partitions
BOARD_ASTEROIDS_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    vendor \
    product \
    odm

# Kernel (prebuilt)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB    := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_KERNEL_IMAGE_NAME := Image

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xa88000
BOARD_BOOTIMG_HEADER_VERSION := 4

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# TWRP / OrangeFox options
TW_INCLUDE_CRYPTO      := true
TW_INCLUDE_FASTBOOTD   := true
TW_USE_LEDS_HAPTICS    := true
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_TWRPAPP     := true
TW_DEFAULT_LANGUAGE    := en
