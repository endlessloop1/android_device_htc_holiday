#
# Copyright (C) 2011 The Evervolv Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

# Inherit qcom Vendor Files
$(call inherit-product-if-exists, vendor/qcom/qcom-vendor-blobs.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_PROPERTY_OVERRIDES += \
    #ro.com.google.clientidbase=android-sprint-us \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/root/init.holiday.rc:root/init.holiday.rc \
    device/htc/holiday/prebuilt/root/init.holiday.usb.rc:root/init.holiday.usb.rc \
    device/htc/holiday/prebuilt/root/ueventd.holiday.rc:root/ueventd.holiday.rc

# Recovery Chargemode Support
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/holiday/prebuilt/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/holiday/prebuilt/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/holiday/prebuilt/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt \
    device/htc/holiday/prebuilt/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_0.png:recovery/root/res/offmode_charging_images/batt_0.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_100.png:recovery/root/res/offmode_charging_images/batt_100.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_10.png:recovery/root/res/offmode_charging_images/batt_10.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_20.png:recovery/root/res/offmode_charging_images/batt_20.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_30.png:recovery/root/res/offmode_charging_images/batt_30.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_40.png:recovery/root/res/offmode_charging_images/batt_40.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_50.png:recovery/root/res/offmode_charging_images/batt_50.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_5.png:recovery/root/res/offmode_charging_images/batt_5.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_60.png:recovery/root/res/offmode_charging_images/batt_60.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_70.png:recovery/root/res/offmode_charging_images/batt_70.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_80.png:recovery/root/res/offmode_charging_images/batt_80.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_90.png:recovery/root/res/offmode_charging_images/batt_90.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_95.png:recovery/root/res/offmode_charging_images/batt_95.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_00.png:recovery/root/res/offmode_charging_images/charging_00.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_01.png:recovery/root/res/offmode_charging_images/charging_01.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_02.png:recovery/root/res/offmode_charging_images/charging_02.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_03.png:recovery/root/res/offmode_charging_images/charging_03.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_04.png:recovery/root/res/offmode_charging_images/charging_04.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_05.png:recovery/root/res/offmode_charging_images/charging_05.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_06.png:recovery/root/res/offmode_charging_images/charging_06.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_07.png:recovery/root/res/offmode_charging_images/charging_07.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_08.png:recovery/root/res/offmode_charging_images/charging_08.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_09.png:recovery/root/res/offmode_charging_images/charging_09.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/error.png:recovery/root/res/offmode_charging_images/error.png

# bootanimation
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

#Add touchscreen config file
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/usr/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keychars/holiday-keypad.kcm.bin:system/usr/keychars/holiday-keypad.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/holiday-keypad.kl:system/usr/keylayout/holiday-keypad.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Inherit BCM Wifi Firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/holiday/holiday-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	ro.opengles.version=131072

DEVICE_PACKAGE_OVERLAYS += device/htc/holiday/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
#
# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/lib/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/holiday/prebuilt/root/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# media profiles and capabilities spec
$(call inherit-product, device/htc/holiday/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/holiday/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := htc_holiday
PRODUCT_DEVICE := holiday
PRODUCT_MODEL := HTC Holiday
PRODUCT_MANUFACTURER := HTC
