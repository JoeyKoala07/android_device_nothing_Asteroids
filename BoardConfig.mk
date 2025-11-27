#
# BoardConfig for Nothing Phone (3a) - Asteroids
# TWRP / OrangeFox device tree
#

# Path to this device tree
DEVICE_PATH := device/nothing/Asteroids

# Build system
ALLOW_MISSING_DEPENDENCIES := true

# A/B OTA
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    odm \
    system \
    system_ext \
    vendor \
    product

# Do NOT use recovery-as-boot (we have a real recovery partition)
# BOARD_USES_RECOVERY_AS_BOOT := true

# Architecture
TARGET_ARCH            := arm64
TARGET_ARCH_VARIANT   := armv8-a
TARGET_CPU_ABI        := arm64-v8a
TARGET_CPU_ABI2       :=
TARGET_CPU_VARIANT    := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := volcano
TARGET_NO_BOOTLOADER         := true

# Kernel / GKI v4
BOARD_BOOT_HEADER_VERSION      := 4
BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_IMAGE_NAME        := Image

TARGET_KERNEL_CONFIG := Asteroids_defconfig
TARGET_KERNEL_SOURCE := kernel/nothing/Asteroids

# Prebuilt kernel (what OrangeFox actually uses)
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL       := $(DEVICE_PATH)/prebuilt/kernel

# mkbootimg arguments
BOARD_MKBOOTIMG_ARGS      += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_INIT_ARGS += --header_version $(BOARD_INIT_BOOT_HEADER_VERSION)

# Image layout
BOARD_INCLUDE_DTB_IN_BOOTIMG    := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_RAMDISK_USE_LZ4           := true

# Partition sizes (from fastboot getvar)
BOARD_BOOTIMAGE_PARTITION_SIZE        := 0x6000000
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 0x6000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 0x6400000
BOARD_DTBOIMG_PARTITION_SIZE          := 0x1800000
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE  := 0x800000
BOARD_FLASH_BLOCK_SIZE                := 131072  # 4096 * 32

# Filesystems
BOARD_HAS_LARGE_FILESYSTEM          := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE    := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Dynamic partitions (values copied from stock tree; can be tuned later)
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := nothing_dynamic_partitions
BOARD_NOTHING_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm
BOARD_NOTHING_DYNAMIC_PARTITIONS_SIZE := 9122611200

# Platform
TARGET_BOARD_PLATFORM := volcano

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_RECOVERY_FSTAB        := recovery.fstab

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Anti-rollback hack (spoofed patch level)
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH   := 2099-12-31
PLATFORM_VERSION        := 16.1.0

# TWRP / OrangeFox UI config
TW_THEME              := portrait_hdpi
TW_EXTRA_LANGUAGES    := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST    := "hbtp_vm"
TW_USE_TOOLBOX        := true
TW_INCLUDE_REPACKTOOLS := true

# Backlight / brightness (OrangeFox demands TW_MAX_BRIGHTNESS)
# These values are typical for modern panels; we can tune later.
TW_BRIGHTNESS_PATH    := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS     := 2047
TW_DEFAULT_BRIGHTNESS := 1024


