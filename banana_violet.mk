#
# Copyright (C) 2018-2020 The LineageOS Project
#
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Bananadroid stuff.
$(call inherit-product, vendor/banana/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := banana_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001.A1 7474174 release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Bananadroid Official.
BANANA_BUILDTYPE := OFFICIAL

# Inherit ANX Camera
$(call inherit-product, vendor/ANXCamera/config.mk)
