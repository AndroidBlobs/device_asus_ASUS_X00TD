# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ASUS_X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := ASUS_X00TD
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := lineage_ASUS_X00TD
PRODUCT_MODEL := ASUS_X00TD

PRODUCT_GMS_CLIENTID_BASE := android-asus
TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := ASUS_X00TD
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 32 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := sdm660_64-user-10-QKQ1-32-release-keys
