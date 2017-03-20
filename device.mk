#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/kltedcm/kltedcm-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/kltedcmactive/kltedcmactive-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/kltedcmactive/overlay

# NFC
DEVICE_NFC_SONY=yes

# Ramdisk for FeliCa
PRODUCT_PACKAGES += \
    init.carrier.rc \
    init.felica.sh

PRODUCT_COPY_FILES += \
    device/samsung/kltedcmactive/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/samsung/kltedcmactive/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/samsung/kltedcmactive/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Variant blobs script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/variant_blobs_hook.sh:install/bin/variant_blobs_hook.sh \
    device/samsung/klte-common/releasetools/variant_blobs.sh:install/bin/variant_blobs.sh

# common klte
$(call inherit-product, device/samsung/klte-common/klte.mk)
