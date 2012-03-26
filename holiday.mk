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
#
# Setup device specific product configuration.
#

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/holiday/holiday-vendor.mk)

# Inherit Language Files
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := htc_holiday
PRODUCT_DEVICE := holiday
PRODUCT_MODEL := HTC Vivid
PRODUCT_MANUFACTURER := HTC

# Set up the product codename, build version & MOTD.
#PRODUCT_CODENAME := e3d
#PRODUCT_VERSION_DEVICE_SPECIFIC := alpha10

#PRODUCT_MOTD :="Welcome to Holiday-ICS"

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_PROPERTY_OVERRIDES += \
#    ro.com.google.clientidbase=android-sprint-us \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/root/init.holiday.rc:root/init.holiday.rc \
    device/htc/holiday/prebuilt/root/ueventd.holiday.rc:root/ueventd.holiday.rc

#Add touchscreen config file
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/usr/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/holiday/holiday-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	#ro.com.google.clientidbase=android-sprint-us \
	#ro.com.google.clientidbase.yt=android-sprint-us \
	#ro.com.google.clientidbase.am=android-sprint-us \
	#ro.com.google.clientidbase.vs=android-sprint-us \
	#ro.com.google.clientidbase.gmm=android-sprint-us \
	#ro.com.google.clientidbase.ms=android-sprint-us \
	#ro.phone.min_match=7 \
	#ro.product.model=PG86100 \
	#ro.cdma.home.operator.alpha=sprint \
	#gsm.sim.operator.alpha=sprint \
	#gsm.operator.alpha=sprint \
	#ro.cdma.home.operator.numeric=310120 \
	#gsm.sim.operator.numeric=310120 \
	#gsm.operator.numeric=310120 \
	#gsm.sim.operator.iso-country=us \
	#gsm.operator.iso-country=us \
	ro.com.google.locationfeatures=1 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	ro.opengles.version=131072

DEVICE_PACKAGE_OVERLAYS += device/htc/holiday/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Misc
PRODUCT_PACKAGES += \
    gps.holiday \
    sensors.holiday \
    lights.holiday

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

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/firmware/default_bak.acdb:/system/etc/firmware/default_bak.acdb

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/holiday/prebuilt/system/lib/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/holiday/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/holiday/prebuilt/root/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/holiday/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/holiday/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := htc_holiday
PRODUCT_DEVICE := holiday
PRODUCT_MODEL := AOSP on Android
