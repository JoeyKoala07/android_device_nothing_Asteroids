# ==========================================================
# BoardConfig for Nothing Phone (3a) — Asteroids (A059)
# OrangeFox/TWRP device tree
# ==========================================================

# --- Device tree root ---
DEVICE_PATH := device/nothing/Asteroids

# --- Build system ---
ALLOW_MISSING_DEPENDENCIES := true

# --- A/B OTA (dynamic partitions) ---
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system \
    system_ext \
    product \
    vendor \
    odm

# If you later confirm boot-as-recovery or vendor_boot layout, we can add:
#   boot vendor_boot dtbo vbmeta vbmeta_system vbmeta_vendor

# --- Arch ---
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

# --- Bootloader / SoC ---
TARGET_BOOTLOADER_BOARD_NAME := volcano
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := volcano

# --- Kernel / boot headers ---
BOARD_BOOT_HEADER_VERSION      := 4
BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_IMAGE_NAME := Image

# Build-from-source defaults (don’t force prebuilts)
TARGET_FORCE_PREBUILT_KERNEL := false
# TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
# TARGET_KERNEL_SOURCE  := kernel/nothing/Asteroids
# TARGET_KERNEL_CONFIG  := Asteroids_defconfig

# mkbootimg args
BOARD_MKBOOTIMG_ARGS      += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_INIT_ARGS += --header_version $(BOARD_INIT_BOOT_HEADER_VERSION)

# Image layout / compression
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_RAMDISK_USE_LZ4 := true

# --- Partition sizes (keep your known values) ---
BOARD_BOOTIMAGE_PARTITION_SIZE        := 0x6000000
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 0x6000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 0x6400000
BOARD_DTBOIMG_PARTITION_SIZE          := 0x1800000
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE  := 0x800000
BOARD_FLASH_BLOCK_SIZE                := 131072  # 4096 * 32

# --- Filesystems ---
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE   := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
# userdata can be f2fs or ext4; enable both build targets:
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# --- Dynamic partitions (super) ---
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := nothing_dynamic_partitions
BOARD_NOTHING_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm
BOARD_NOTHING_DYNAMIC_PARTITIONS_SIZE := 9122611200

# --- Recovery settings ---
# IMPORTANT: point to a REAL file in-tree to avoid PHONY target errors.
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888

# If (and only if) the device truly uses "recovery-as-boot", uncomment:
# BOARD_USES_RECOVERY_AS_BOOT := true

# --- AVB ---
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# --- Security patch spoof (for recovery-only builds; adjust as needed) ---
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH   := 2099-12-31
PLATFORM_VERSION        := 16.1.0

# --- OrangeFox / TWRP UI ---
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

# Brightness (safe defaults; tune later if needed)
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 4409
TW_DEFAULT_BRIGHTNESS := 2200


