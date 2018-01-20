#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# AOJP common
$(call inherit-product-if-exists, vendor/aojp/config/aojp.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/kltedcm/kltedcm-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/kltedcmactive/kltedcmactive-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/kltedcmactive/overlay

# Fingerprint
$(call inherit-product, device/samsung/klte-common/fingerprint/product.mk)

# NFC
DEVICE_NFC_SONY=yes
$(call inherit-product, device/samsung/klte-common/nfc/sony/product.mk)

# Ramdisk for FeliCa
PRODUCT_PACKAGES += \
    init.carrier.rc \
    init.felica.sh

#Smart card service for felica
#TARGET_ENABLE_SMARTCARD_SERVICE := true
#PRODUCT_PACKAGES += \
#    org.simalliance.openmobileapi.xml org.simalliance.openmobileapi

# common klte
$(call inherit-product, device/samsung/klte-common/klte.mk)
