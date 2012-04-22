# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit proprietary files
-include vendor/htc/holiday/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := holiday
TARGET_NO_RADIOIMAGE := true

TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a8)

TARGET_SPECIFIC_HEADER_PATH := device/htc/holiday/include

# QCOMDisplay Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_ROTATOR_KERNEL_FORMATS

# Gps
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := holiday

# Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=holiday no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/holiday/prebuilt/root/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/holiday/prebuilt/root/recoverykernel

# For recovery-chargemode
TARGET_RECOVERY_INITRC := device/htc/holiday/prebuilt/recovery/root/init.rc

# For vold to get SD to mount properly
# BOARD_VOLD_MAX_PARTITIONS := 37

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

#FileSystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/holiday/graphics.c
#BOARD_USES_RECOVERY_CHARGEMODE := true

# Webkit
TARGET_FORCE_CPU_UPLOAD := false
DYNAMIC_SHARED_LIBV8SO := true
