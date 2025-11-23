# Minimal stub of vendor/omni/config/common.mk
# The real file comes from the vendor/omni tree (external dependency).
# This stub keeps `$(call inherit-product, vendor/omni/config/common.mk)`
# from failing during basic tree scans. Replace with the upstream file for
# full functionality.

ifndef VENDOR_OMNI_CONFIG_COMMON_STUB
VENDOR_OMNI_CONFIG_COMMON_STUB := true

# Example: add any product overrides common to Omni builds here.
#PRODUCT_PACKAGES += \
#    some_common_package

endif
