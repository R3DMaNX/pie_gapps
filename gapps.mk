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

#inherit common gapps
$(call inherit-product, vendor/gapps/common-blobs.mk)

# /app
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    FaceLock \
    GoogleCamera \
    GoogleContactsSyncAdapter \
    GoogleTTS \
    GoogleVrCore \
    Hangouts \
    Photos \
    PrebuiltDeskClockGoogle \
    talkback

# messenger skip on tablets
ifeq ($(filter dragon,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    PrebuiltBugle
endif

# /framework
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2016 \
    com.google.android.maps \
    com.google.android.media.effects

# /priv-app
PRODUCT_PACKAGES += \
    AndroidPlatformServices \
    CarrierSetup \
    ConfigUpdater \
    ConnMetrics \
    GmsCoreSetupPrebuilt \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    Phonesky \
    PrebuiltGmsCore \
    DynamiteLoader.apk \
    DynamiteModulesA \
    DynamiteModulesB \
    DynamiteModulesC \
    DynamiteModulesD \
    GoogleCertificates \
    SetupWizard \
    Velvet

# /symlinks
PRODUCT_PACKAGES += \
    libfacenet.so
