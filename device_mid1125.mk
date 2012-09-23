$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/coby/mid1125/mid1125-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/coby/mid1125/overlay

LOCAL_PATH := device/coby/mid1125
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/coby/mid1125/recovery/lib/tcc_mtd.ko:recovery/root/lib/tcc_mtd.ko \
    device/coby/mid1125/recovery/lib/tcc_nand.ko:recovery/root/lib/tcc_nand.ko

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_mid1125
PRODUCT_DEVICE := mid1125
