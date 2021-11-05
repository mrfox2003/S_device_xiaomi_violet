#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := voltage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/raven/raven:12/SD1A.210817.036/7805805:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/raven/raven:12/SD1A.210817.036/7805805:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Voltage OS Official
VOLTAGE_BUILD_TYPE := OFFICIAL
