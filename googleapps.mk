# Copyright (C) 2018 Benzo Rom
# Copyright (C) 2018 SixROM
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

# app
PRODUCT_PACKAGES += \
    arcore \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    CarrierMetrics \
    ConnectivityMonitor \
    FaceLock \
    GoogleCamera \
    GoogleContactsSyncAdapter \
    GoogleExtShared \
    GoogleTTS \
    GoogleVrCore \
    MarkupGoogle \
    NexusWallpapersStubPrebuilt2018 \
    PrebuiltDeskClockGoogle \
    talkback \
    Music2 \
    Chrome \
    WallpapersBReel2018
    #PrebuiltBugle

# priv-app
PRODUCT_PACKAGES += \
    AndroidMigratePrebuilt \
    AndroidPlatformServices \
    ConfigUpdater \
    ConnMetrics \
    GoogleBackupTransport \
    GoogleExtServices \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    MatchmakerPrebuilt \
    NexusLauncherPrebuilt \
    Phonesky \
    PrebuiltGmsCorePi \
    SetupWizard \
    StorageManagerGoogle \
    TagGoogle \
    TurboPrebuilt \
    Velvet
    #SettingsIntelligenceGooglePrebuilt
    #GoogleContacts
    #GoogleDialer

# framework
PRODUCT_PACKAGES += \
    com.google.android.dialer.support \
    com.google.android.maps \
    com.google.android.media.effects \
    com.google.widevine.software.drm

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/googleapps/overlay/

# Props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.opa.eligible_device=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.bs_theme=true \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    setupwizard.theme=glif_v3_light
    ro.wallpapers_loc_request_suw=true

# Libraries
PRODUCT_COPY_FILES += \
    vendor/googleapps/lib64/libbarhopper.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libbarhopper.so \
    vendor/googleapps/lib64/libgdx.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgdx.so \
    vendor/googleapps/lib64/libwallpapers-breel-2018-jni.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libwallpapers-breel-2018-jni.so \
    vendor/googleapps/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libsketchology_native.so

# Symlinks
PRODUCT_PACKAGES += \
    libbarhopper.so \
    libfacenet.so \
    libgdx.so \
    libwallpapers-breel-2018-jni.so \
    libjpeg.so \
    libsketchology_native.so

ifneq ($(filter marlin sailfish, $(TARGET_DEVICE)),)
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2016

PRODUCT_COPY_FILES += \
    vendor/googleapps/etc/permissions/com.google.android.camera.experimental2016.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.camera.experimental2016.xml \
    vendor/googleapps/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_2016_exclusive.xml \
    vendor/googleapps/etc/sysconfig/pixel_experience_2017.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_experience_2017.xml \
    vendor/googleapps/etc/sysconfig/pixel_experience_2018.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_experience_2018.xml
endif
ifneq ($(filter taimen walleye, $(TARGET_DEVICE)),)
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2017

PRODUCT_COPY_FILES += \
    vendor/googleapps/etc/sysconfig/pixel_2017_exclusive.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_2017_exclusive.xml \
    vendor/googleapps/etc/sysconfig/pixel_experience_2017.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_experience_2017.xml \
    vendor/googleapps/etc/sysconfig/pixel_experience_2018.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_experience_2018.xml
endif

# Blobs
PRODUCT_COPY_FILES += \
    vendor/googleapps/etc/default-permissions/default-permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default-permissions/default-permissions.xml \
    vendor/googleapps/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.dialer.support.xml \
    vendor/googleapps/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.maps.xml \
    vendor/googleapps/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.media.effects.xml \
    vendor/googleapps/etc/permissions/com.google.widevine.software.drm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/googleapps/etc/permissions/privapp-permissions-googleapps.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-googleapps.xml \
    vendor/googleapps/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/preferred-apps/google.xml \
    vendor/googleapps/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google.xml \
    vendor/googleapps/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_build.xml \
    vendor/googleapps/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/googleapps/etc/sysconfig/google_vr_build.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_vr_build.xml \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libccl.so:system/priv-app/Velvet/lib/arm64/libccl.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libcronet.61.0.3160.0.so:system/priv-app/Velvet/lib/arm64/libcronet.61.0.3160.0.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libframesequence.so:system/priv-app/Velvet/lib/arm64/libframesequence.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libgoogle_speech_jni.so:system/priv-app/Velvet/lib/arm64/libgoogle_speech_jni.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libgoogle_speech_micro_jni.so:system/priv-app/Velvet/lib/arm64/libgoogle_speech_micro_jni.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libnativecrashreporter.so:system/priv-app/Velvet/lib/arm64/libnativecrashreporter.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/liboffline_actions_jni.so:system/priv-app/Velvet/lib/arm64/liboffline_actions_jni.so \
    vendor/googleapps/priv-app/Velvet/lib/arm64/libhere_allpurpose.so:system/priv-app/Velvet/lib/arm64/libhere_allpurpose.so \
    vendor/googleapps/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/googleapps/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so \
    vendor/googleapps/lib64/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfacenet.so \
    vendor/googleapps/lib64/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfrsdk.so \
    vendor/googleapps/lib64/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfilterpack_facedetect.so \
    vendor/googleapps/usr/srec/en-US/c_fst:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/c_fst \
    vendor/googleapps/usr/srec/en-US/clg:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/clg \
    vendor/googleapps/usr/srec/en-US/commands.abnf:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/commands.abnf \
    vendor/googleapps/usr/srec/en-US/compile_grammar.config:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/compile_grammar.config \
    vendor/googleapps/usr/srec/en-US/contacts.abnf:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/contacts.abnf \
    vendor/googleapps/usr/srec/en-US/dict:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/dict \
    vendor/googleapps/usr/srec/en-US/dictation.config:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/dictation.config \
    vendor/googleapps/usr/srec/en-US/dnn:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/dnn \
    vendor/googleapps/usr/srec/en-US/endpointer_dictation.config:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/endpointer_dictation.config \
    vendor/googleapps/usr/srec/en-US/endpointer_voicesearch.config:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/googleapps/usr/srec/en-US/ep_acoustic_model:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/ep_acoustic_model \
    vendor/googleapps/usr/srec/en-US/g2p_fst:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/g2p_fst \
    vendor/googleapps/usr/srec/en-US/grammar.config:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/grammar.config \
    vendor/googleapps/usr/srec/en-US/hclg_shotword:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hclg_shotword \
    vendor/googleapps/usr/srec/en-US/hmmlist:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hmmlist \
    vendor/googleapps/usr/srec/en-US/hmm_symbols:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hmm_symbols \
    vendor/googleapps/usr/srec/en-US/hotword.config:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hotword.config \
    vendor/googleapps/usr/srec/en-US/hotword_classifier:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hotword_classifier \
    vendor/googleapps/usr/srec/en-US/hotword_normalizer:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hotword_normalizer \
    vendor/googleapps/usr/srec/en-US/hotword_prompt.txt:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hotword_prompt.txt \
    vendor/googleapps/usr/srec/en-US/hotword_word_symbols:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/hotword_word_symbols \
    vendor/googleapps/usr/srec/en-US/metadata:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/metadata \
    vendor/googleapps/usr/srec/en-US/normalizer:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/normalizer \
    vendor/googleapps/usr/srec/en-US/norm_fst:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/norm_fst \
    vendor/googleapps/usr/srec/en-US/offensive_word_normalizer:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/offensive_word_normalizer \
    vendor/googleapps/usr/srec/en-US/phonelist:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/phonelist \
    vendor/googleapps/usr/srec/en-US/phone_state_map:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/phone_state_map \
    vendor/googleapps/usr/srec/en-US/rescoring_lm:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/rescoring_lm \
    vendor/googleapps/usr/srec/en-US/wordlist:$(TARGET_COPY_OUT_SYSTEM)/usr/srec/en-US/wordlist
