$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/kltedcmactive/full_kltedcmactive.mk)

PRODUCT_DEVICE := kltedcmactive
PRODUCT_NAME := cm_kltedcmactive
