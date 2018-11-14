# Copyright (C) 2016 The Pure Nexus Project
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

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/googleapps/lib,system/lib)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/googleapps/lib64,system/lib64)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/googleapps/usr,system/usr)

PRODUCT_COPY_FILES += \
    vendor/googleapps/etc/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml \
    vendor/googleapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/googleapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/googleapps/etc/permissions/privapp-permissions-google.xml:system/etc/permissions/privapp-permissions-google.xml \
    vendor/googleapps/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/googleapps/etc/sysconfig/framework-sysconfig.xml:system/etc/sysconfig/framework-sysconfig.xml \
    vendor/googleapps/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml \
    vendor/googleapps/etc/sysconfig/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/googleapps/etc/sysconfig/google-hiddenapi-package-whitelist.xml:system/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/googleapps/etc/sysconfig/google_vr_build.xml:system/etc/sysconfig/google_vr_build.xml \
    vendor/googleapps/etc/sysconfig/hiddenapi-package-whitelist.xml:system/etc/sysconfig/hiddenapi-package-whitelist.xml \
    vendor/googleapps/etc/sysconfig/nexus.xml:system/etc/sysconfig/nexus.xml \
    vendor/googleapps/etc/sysconfig/whitelist_com.android.omadm.service.xml:system/etc/sysconfig/whitelist_com.android.omadm.service.xml \
