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

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_holiday ro.build.fingerprint=telstra_wwe/htc_holiday/holiday:4.0.3/IML74K/300623.4:user/release-keys PRIVATE_BUILD_DESC="3.25.841.4 CL300623 release-keys" BUILD_NUMBER=300623
