# Copyright (C) 2020-2021 Wave-OS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Awaken stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Official
AWAKEN_BUILD_TYPE := OFFICIAL

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := awaken_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V11.0.8.0.PFHINXM release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
