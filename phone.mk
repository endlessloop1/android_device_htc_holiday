# Specify phone tech
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := holiday

# Inherit device configuration
$(call inherit-product, device/htc/holiday/holiday.mk)

# Device naming
PRODUCT_DEVICE := holiday
PRODUCT_NAME := htc_holiday
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Vivid
PRODUCT_MANUFACTURER := HTC
