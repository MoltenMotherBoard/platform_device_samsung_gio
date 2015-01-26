# Copyright (C) 2009 The Android Open Source Project
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

## Inherit vendor proprietary files
$(call inherit-product, vendor/samsung/gio/vendor_blobs.mk)

# MMB Vendor
$(call inherit-product, vendor/mmb/vendor_blobs_cm.mk)

include device/samsung/msm7x27-common/common.mk

## Device specific overlay
DEVICE_PACKAGE_OVERLAYS := device/samsung/gio/overlay

## Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27 \
    audio_policy.msm7x27

## Camera
PRODUCT_PACKAGES += \
    camera.msm7x27 \
    libjni_legacymosaic \
    LegacyCamera

## Lights
PRODUCT_PACKAGES += \
   lights.msm7x27

## Wifi
#PRODUCT_PACKAGES += \
#    abtfilt \
#    wlan_tool \
#    wmiconfig \
    eeprom-AR6002 \
    ar6000.ko

## Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/msm7x27-common/ramdisk/init.device.rc:root/init.gt-s5660board.rc \
    device/samsung/msm7x27-common/ramdisk/init.device.usb.rc:root/init.gt-s5660board.usb.rc \
    device/samsung/msm7x27-common/ramdisk/ueventd.device.rc:root/ueventd.gt-s5660board.rc \
    device/samsung/gio/ramdisk/GIO.rle:root/GIO.rle

## LDPI assets
PRODUCT_AAPT_CONFIG := normal hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
