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

PRODUCT_COPY_FILES += \
    vendor/gapps/etc/permissions/com.google.android.camera.experimental2016.xml:system/etc/permissions/com.google.android.camera.experimental2016.xml \
    vendor/gapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/gapps/etc/permissions/privapp-permissions-google.xml:system/etc/permissions/privapp-permissions-google.xml \
    vendor/gapps/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/gapps/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
    vendor/gapps/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/gapps/etc/sysconfig/google_vr_build.xml:system/etc/sysconfig/google_vr_build.xml \
    vendor/gapps/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/gapps/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/gapps/lib64/libfacenet.so:system/lib64/libfacenet.so \
    vendor/gapps/lib64/libfrsdk.so:system/lib64/libfrsdk.so \
    vendor/gapps/lib64/libfilterpack_facedetect.so:system/lib64/libfilterpack_facedetect.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libbrotli.so:system/priv-app/Velvet/lib/arm64/libbrotli.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libccl.so:system/priv-app/Velvet/lib/arm64/libccl.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libcronet.59.0.3071.25.so:system/priv-app/Velvet/lib/arm64/libcronet.59.0.3071.25.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libframesequence.so:system/priv-app/Velvet/lib/arm64/libframesequence.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libgoogle_speech_jni.so:system/priv-app/Velvet/lib/arm64/libgoogle_speech_jni.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libgoogle_speech_micro_jni.so:system/priv-app/Velvet/lib/arm64/libgoogle_speech_micro_jni.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libnativecrashreporter.so:system/priv-app/Velvet/lib/arm64/libnativecrashreporter.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/liboffline_actions_jni.so:system/priv-app/Velvet/lib/arm64/liboffline_actions_jni.so \
    vendor/gapps/priv-app/Velvet/lib/arm64/libthird_party_brotli_dec_jni.so:system/priv-app/Velvet/lib/arm64/libthird_party_brotli_dec_jni.so \
    vendor/gapps/usr/srec/en-US/am_phonemes.syms:system/usr/srec/en-US/am_phonemes.syms \
    vendor/gapps/usr/srec/en-US/app_bias.fst:system/usr/srec/en-US/app_bias.fst \
    vendor/gapps/usr/srec/en-US/APP_NAME.fst:system/usr/srec/en-US/APP_NAME.fst \
    vendor/gapps/usr/srec/en-US/APP_NAME.syms:system/usr/srec/en-US/APP_NAME.syms \
    vendor/gapps/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
    vendor/gapps/usr/srec/en-US/CLG.prewalk.fst:system/usr/srec/en-US/CLG.prewalk.fst \
    vendor/gapps/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/gapps/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/gapps/usr/srec/en-US/config.pumpkin:system/usr/srec/en-US/config.pumpkin \
    vendor/gapps/usr/srec/en-US/confirmation_bias.fst:system/usr/srec/en-US/confirmation_bias.fst \
    vendor/gapps/usr/srec/en-US/CONTACT_NAME.fst:system/usr/srec/en-US/CONTACT_NAME.fst \
    vendor/gapps/usr/srec/en-US/CONTACT_NAME.syms:system/usr/srec/en-US/CONTACT_NAME.syms \
    vendor/gapps/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/gapps/usr/srec/en-US/contacts_bias.fst:system/usr/srec/en-US/contacts_bias.fst \
    vendor/gapps/usr/srec/en-US/contacts_disambig.fst:system/usr/srec/en-US/contacts_disambig.fst \
    vendor/gapps/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
    vendor/gapps/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/gapps/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
    vendor/gapps/usr/srec/en-US/embedded_class_denorm.mfar:system/usr/srec/en-US/embedded_class_denorm.mfar \
    vendor/gapps/usr/srec/en-US/embedded_normalizer.mfar:system/usr/srec/en-US/embedded_normalizer.mfar \
    vendor/gapps/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/gapps/usr/srec/en-US/endpointer_model:system/usr/srec/en-US/endpointer_model \
    vendor/gapps/usr/srec/en-US/endpointer_model.mmap:system/usr/srec/en-US/endpointer_model.mmap \
    vendor/gapps/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/gapps/usr/srec/en-US/ep_portable_mean_stddev:system/usr/srec/en-US/ep_portable_mean_stddev \
    vendor/gapps/usr/srec/en-US/ep_portable_model.uint8.mmap:system/usr/srec/en-US/ep_portable_model.uint8.mmap \
    vendor/gapps/usr/srec/en-US/g2p.data:system/usr/srec/en-US/g2p.data \
    vendor/gapps/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/gapps/usr/srec/en-US/g2p_graphemes.syms:system/usr/srec/en-US/g2p_graphemes.syms \
    vendor/gapps/usr/srec/en-US/g2p_phonemes.syms:system/usr/srec/en-US/g2p_phonemes.syms \
    vendor/gapps/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/gapps/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/gapps/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/gapps/usr/srec/en-US/input_mean_std_dev:system/usr/srec/en-US/input_mean_std_dev \
    vendor/gapps/usr/srec/en-US/lexicon.U.fst:system/usr/srec/en-US/lexicon.U.fst \
    vendor/gapps/usr/srec/en-US/lstm_model.uint8.data:system/usr/srec/en-US/lstm_model.uint8.data \
    vendor/gapps/usr/srec/en-US/magic_mic.config:system/usr/srec/en-US/magic_mic.config \
    vendor/gapps/usr/srec/en-US/media_bias.fst:system/usr/srec/en-US/media_bias.fst \
    vendor/gapps/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    vendor/gapps/usr/srec/en-US/monastery_config.pumpkin:system/usr/srec/en-US/monastery_config.pumpkin \
    vendor/gapps/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/gapps/usr/srec/en-US/offensive_word_normalizer.mfar:system/usr/srec/en-US/offensive_word_normalizer.mfar \
    vendor/gapps/usr/srec/en-US/offline_action_data.pb:system/usr/srec/en-US/offline_action_data.pb \
    vendor/gapps/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    vendor/gapps/usr/srec/en-US/portable_lstm:system/usr/srec/en-US/portable_lstm \
    vendor/gapps/usr/srec/en-US/portable_meanstddev:system/usr/srec/en-US/portable_meanstddev \
    vendor/gapps/usr/srec/en-US/pumpkin.mmap:system/usr/srec/en-US/pumpkin.mmap \
    vendor/gapps/usr/srec/en-US/read_items_bias.fst:system/usr/srec/en-US/read_items_bias.fst \
    vendor/gapps/usr/srec/en-US/rescoring.fst.compact:system/usr/srec/en-US/rescoring.fst.compact \
    vendor/gapps/usr/srec/en-US/semantics.pumpkin:system/usr/srec/en-US/semantics.pumpkin \
    vendor/gapps/usr/srec/en-US/skip_items_bias.fst:system/usr/srec/en-US/skip_items_bias.fst \
    vendor/gapps/usr/srec/en-US/SONG_NAME.fst:system/usr/srec/en-US/SONG_NAME.fst \
    vendor/gapps/usr/srec/en-US/SONG_NAME.syms:system/usr/srec/en-US/SONG_NAME.syms \
    vendor/gapps/usr/srec/en-US/time_bias.fst:system/usr/srec/en-US/time_bias.fst \
    vendor/gapps/usr/srec/en-US/transform.mfar:system/usr/srec/en-US/transform.mfar \
    vendor/gapps/usr/srec/en-US/voice_actions.config:system/usr/srec/en-US/voice_actions.config \
    vendor/gapps/usr/srec/en-US/voice_actions_compiler.config:system/usr/srec/en-US/voice_actions_compiler.config \
    vendor/gapps/usr/srec/en-US/word_confidence_classifier:system/usr/srec/en-US/word_confidence_classifier \
    vendor/gapps/usr/srec/en-US/wordlist.syms:system/usr/srec/en-US/wordlist.syms
