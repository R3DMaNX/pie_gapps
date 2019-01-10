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
    DynamiteModulesA \
    AdsDynamite \
    DynamiteModulesC \
    CronetDynamite \
    DynamiteLoader \
    GoogleCertificates \
    MapsDynamite \
    SetupWizard \
    StorageManagerGoogle \
    TagGoogle \
    TurboPrebuilt \
    Velvet \
    OTAConfigPrebuilt
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
    vendor/googleapps/app/GoogleCamera/GoogleCamera.apk.prof:system/app/GoogleCamera/GoogleCamera.apk.prof \
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
    vendor/googleapps/lib64/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfrsdk.so \
    vendor/googleapps/lib64/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfilterpack_facedetect.so \
    vendor/googleapps/lib64/libfacenet.so:system/lib64/libfacenet.so \
    vendor/googleapps/usr/srec/en-US/am_phonemes.syms:system/usr/srec/en-US/am_phonemes.syms \
    vendor/googleapps/usr/srec/en-US/app_bias.fst:system/usr/srec/en-US/app_bias.fst \
    vendor/googleapps/usr/srec/en-US/APP_NAME.fst:system/usr/srec/en-US/APP_NAME.fst \
    vendor/googleapps/usr/srec/en-US/APP_NAME.syms:system/usr/srec/en-US/APP_NAME.syms \
    vendor/googleapps/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
    vendor/googleapps/usr/srec/en-US/CLG.prewalk.fst:system/usr/srec/en-US/CLG.prewalk.fst \
    vendor/googleapps/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/googleapps/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/googleapps/usr/srec/en-US/config.pumpkin:system/usr/srec/en-US/config.pumpkin \
    vendor/googleapps/usr/srec/en-US/confirmation_bias.fst:system/usr/srec/en-US/confirmation_bias.fst \
    vendor/googleapps/usr/srec/en-US/CONTACT_NAME.fst:system/usr/srec/en-US/CONTACT_NAME.fst \
    vendor/googleapps/usr/srec/en-US/CONTACT_NAME.syms:system/usr/srec/en-US/CONTACT_NAME.syms \
    vendor/googleapps/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/googleapps/usr/srec/en-US/contacts_bias.fst:system/usr/srec/en-US/contacts_bias.fst \
    vendor/googleapps/usr/srec/en-US/contacts_disambig.fst:system/usr/srec/en-US/contacts_disambig.fst \
    vendor/googleapps/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
    vendor/googleapps/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/googleapps/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
    vendor/googleapps/usr/srec/en-US/embedded_class_denorm.mfar:system/usr/srec/en-US/embedded_class_denorm.mfar \
    vendor/googleapps/usr/srec/en-US/embedded_normalizer.mfar:system/usr/srec/en-US/embedded_normalizer.mfar \
    vendor/googleapps/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/googleapps/usr/srec/en-US/endpointer_model:system/usr/srec/en-US/endpointer_model \
    vendor/googleapps/usr/srec/en-US/endpointer_model.mmap:system/usr/srec/en-US/endpointer_model.mmap \
    vendor/googleapps/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/googleapps/usr/srec/en-US/ep_portable_mean_stddev:system/usr/srec/en-US/ep_portable_mean_stddev \
    vendor/googleapps/usr/srec/en-US/ep_portable_model.uint8.mmap:system/usr/srec/en-US/ep_portable_model.uint8.mmap \
    vendor/googleapps/usr/srec/en-US/g2p.data:system/usr/srec/en-US/g2p.data \
    vendor/googleapps/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/googleapps/usr/srec/en-US/g2p_graphemes.syms:system/usr/srec/en-US/g2p_graphemes.syms \
    vendor/googleapps/usr/srec/en-US/g2p_phonemes.syms:system/usr/srec/en-US/g2p_phonemes.syms \
    vendor/googleapps/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/googleapps/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/googleapps/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/googleapps/usr/srec/en-US/input_mean_std_dev:system/usr/srec/en-US/input_mean_std_dev \
    vendor/googleapps/usr/srec/en-US/lexicon.U.fst:system/usr/srec/en-US/lexicon.U.fst \
    vendor/googleapps/usr/srec/en-US/lstm_model.uint8.data:system/usr/srec/en-US/lstm_model.uint8.data \
    vendor/googleapps/usr/srec/en-US/magic_mic.config:system/usr/srec/en-US/magic_mic.config \
    vendor/googleapps/usr/srec/en-US/media_bias.fst:system/usr/srec/en-US/media_bias.fst \
    vendor/googleapps/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    vendor/googleapps/usr/srec/en-US/monastery_config.pumpkin:system/usr/srec/en-US/monastery_config.pumpkin \
    vendor/googleapps/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/googleapps/usr/srec/en-US/offensive_word_normalizer.mfar:system/usr/srec/en-US/offensive_word_normalizer.mfar \
    vendor/googleapps/usr/srec/en-US/offline_action_data.pb:system/usr/srec/en-US/offline_action_data.pb \
    vendor/googleapps/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    vendor/googleapps/usr/srec/en-US/portable_lstm:system/usr/srec/en-US/portable_lstm \
    vendor/googleapps/usr/srec/en-US/portable_meanstddev:system/usr/srec/en-US/portable_meanstddev \
    vendor/googleapps/usr/srec/en-US/pumpkin.mmap:system/usr/srec/en-US/pumpkin.mmap \
    vendor/googleapps/usr/srec/en-US/read_items_bias.fst:system/usr/srec/en-US/read_items_bias.fst \
    vendor/googleapps/usr/srec/en-US/rescoring.fst.compact:system/usr/srec/en-US/rescoring.fst.compact \
    vendor/googleapps/usr/srec/en-US/semantics.pumpkin:system/usr/srec/en-US/semantics.pumpkin \
    vendor/googleapps/usr/srec/en-US/skip_items_bias.fst:system/usr/srec/en-US/skip_items_bias.fst \
    vendor/googleapps/usr/srec/en-US/SONG_NAME.fst:system/usr/srec/en-US/SONG_NAME.fst \
    vendor/googleapps/usr/srec/en-US/SONG_NAME.syms:system/usr/srec/en-US/SONG_NAME.syms \
    vendor/googleapps/usr/srec/en-US/time_bias.fst:system/usr/srec/en-US/time_bias.fst \
    vendor/googleapps/usr/srec/en-US/transform.mfar:system/usr/srec/en-US/transform.mfar \
    vendor/googleapps/usr/srec/en-US/voice_actions.config:system/usr/srec/en-US/voice_actions.config \
    vendor/googleapps/usr/srec/en-US/voice_actions_compiler.config:system/usr/srec/en-US/voice_actions_compiler.config \
    vendor/googleapps/usr/srec/en-US/word_confidence_classifier:system/usr/srec/en-US/word_confidence_classifier \
    vendor/googleapps/usr/srec/en-US/wordlist.syms:system/usr/srec/en-US/wordlist.syms
