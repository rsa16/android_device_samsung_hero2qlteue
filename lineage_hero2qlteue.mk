#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := hero2qlteue

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gemini device
$(call inherit-product, device/samsung/hero2qlteue/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hero2qlteue
PRODUCT_DEVICE := hero2qlteue
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G935U
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="hero2qlteue" \
    PRODUCT_NAME="hero2qlte" \
    BUILD_FINGERPRINT="samsung/hero2qlte/hero2qlteue:6.0.1/MMB29M/G9350ZHU2APK2:user/release-keys" \
    PRIVATE_BUILD_DESC="hero2qlte-user 6.0.1 MMB29M G9350ZHU2APK2 release-keys"

TARGET_VENDOR := samsung
