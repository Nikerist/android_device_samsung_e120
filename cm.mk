$(call inherit-product, device/samsung/e120l/full_e120l.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SHV-E120L TARGET_DEVICE=SHV-E120L BUILD_FINGERPRINT="samsung/SHV-E120L/SHV-E120L:4.4.2/KOT49H/UCLF6:user/release-keys" PRIVATE_BUILD_DESC="SHV-E120L-user 4.4.2 KOT49H UCLF6 release-keys"


PRODUCT_NAME := cm_e120l
PRODUCT_DEVICE := e120l

