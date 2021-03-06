# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/huawei/h30u10/lineage_h30u10.mk)

LOCAL_PATH := device/huawei/h30u10

# Common CM stuff
CM_BUILD := h30u10

$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=7.1.2/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="h30u10-user 7.1.2 MRA58M 2280749 release-keys"

PRODUCT_NAME := omni_h30u10
PRODUCT_DEVICE := h30u10
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := h30u10

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="h30u10"

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.sprout.rc:root/init.sprout.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.sprout:root/fstab.sprout
