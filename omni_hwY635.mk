# Inherit device configuration
$(call inherit-product, device/huawei/hwY635/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hwY635
PRODUCT_NAME := omni_hwY635
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_MODEL := Y635-L01

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=hwY635 PRODUCT_NAME=Y635-L01
