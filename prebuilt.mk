# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    GoogleContacts \
    LatinIMEGooglePrebuilt \
    WallpapersBReel \
    NexusWallpapersStubPrebuilt \
    Turbo \
    WallpaperPickerGooglePrebuilt \
    WallpapersUsTwo

# Libraries
PRODUCT_COPY_FILES += \
    vendor/gapps/lib64/libgdx.so:system/lib64/libgdx.so \
    vendor/gapps/lib64/libgeswallpapers-jni.so:system/lib64/libgeswallpapers-jni.so

# Symlinks
PRODUCT_PACKAGES += \
    libgdx.so \
    libgeswallpapers-jni.so \
    libjpeg.so

# Include package overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/gapps/overlay/

# Pixel & Pixel C Launcher
ifneq ($(filter dragon,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    PixelCLauncherPrebuilt
else
PRODUCT_PACKAGES += \
    NexusLauncherPrebuilt
endif

#skip prop entrys on project treble devices
ifeq ($(filter marlin sailfish,$(TARGET_PRODUCT)),)
# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5 \
    ro.wallpapers_loc_request_suw=true
endif

#dialer skip on tablets
ifeq ($(filter dragon,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    GoogleDialer \
    com.google.android.dialer.support

#telephony permissions
PRODUCT_COPY_FILES += \
    vendor/gapps/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/gapps/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml
endif
