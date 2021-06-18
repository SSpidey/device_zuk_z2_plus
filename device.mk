# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017-2018, The LineageOS Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
# Get non-open-source specific aspects

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Inherit from vendor
$(call inherit-product-if-exists, vendor/zuk/z2_plus/z2_plus-vendor.mk)

# Inherit from msm8996-common
$(call inherit-product, device/zuk/msm8996-common/msm8996.mk)

# Prebuilt Packages
PRODUCT_PACKAGES += \
    GalleryGo

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# MiCalculator
PRODUCT_PACKAGES += \
    MiCalculator

# GcamGO
PRODUCT_PACKAGES += \
    CameraGo

# MiXplorer
PRODUCT_PACKAGES += \
    MiXplorer

# MiXArchive
PRODUCT_PACKAGES += \
    MiXArchive

# Ramdisk
PRODUCT_PACKAGES += \
    init.zuk.rc

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Retro
PRODUCT_PACKAGES += \
    RetroMusic

#FireFoxLite
PRODUCT_PACKAGES += \
    FireFoxLite

# Gapps packages
PRODUCT_PACKAGES += \
    CalendarStorage \
    GoogleCalculator \
    GoogleCalendar \
    GoogleDeskClock 

# Kimci Recorder
PRODUCT_PACKAGES += \
    KimciRecorder

# VancedManager by Vanced Team
PRODUCT_PACKAGES += \
    VancedManager
