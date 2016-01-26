LOCAL_PATH := device/huawei/hwY635

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/recovery/charger:root/charger \
    $(LOCAL_PATH)/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/recovery/sbin/rmt_oeminfo:root/sbin/rmt_oeminfo \
    $(LOCAL_PATH)/recovery/sbin/rmt_storage:root/sbin/rmt_storage \
    $(LOCAL_PATH)/recovery/sbin/test_diag:root/sbin/test_diag

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := hwY635
