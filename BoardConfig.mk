USE_CAMERA_STUB := true

# inherit from common msm8660 device
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/holiday/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := holiday
TARGET_NO_RADIOIMAGE := true

# TARGET_SPECIFIC_HEADER_PATH := device/htc/holiday/include
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

# Gps
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := holiday
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Wifi Specific Defines
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/fw_bcm4330.bin nvram_path=/proc/calibration iface_name=eth0"

# TARGET_HARDWARE_3D := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# BOARD_CAMERA_USE_GETBUFFERINFO := true

BOARD_USE_NEW_LIBRIL_HTC := true
TARGET_PROVIDES_LIBRIL := vendor/htc/holiday/proprietary/lib/libril.so

# BOARD_HAVE_SQN_WIMAX := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=holiday no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/holiday/prebuilt/root/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/holiday/prebuilt/root/recoverykernel

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p31: 000ffa00 00000200 "misc"
# mmcblk0p21: 00fffc00 00000200 "recovery"
# mmcblk0p20: 01000000 00000200 "boot"
# mmcblk0p22: 31fffc00 00000200 "system"
# mmcblk0p24: 077fde00 00000200 "cache"
# mmcblk0p23: 4aabc400 00000200 "userdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/holiday/graphics.c
