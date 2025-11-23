This directory is a placeholder for a prebuilt kernel used by the device build.

BoardConfig.mk currently sets:
  TARGET_FORCE_PREBUILT_KERNEL := true
and TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

Replace the contents of this directory with the real prebuilt kernel image(s)
and any associated dtb/initramfs files, or change
`TARGET_FORCE_PREBUILT_KERNEL` to `false` in `BoardConfig.mk` to build a
kernel from source.

Do not commit large binary kernels to the repository unless you intend to
store them here permanently.
