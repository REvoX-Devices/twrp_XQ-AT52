#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from XQ-AT52 device
$(call inherit-product, device/sony/XQ-AT52/device.mk)

PRODUCT_DEVICE := XQ-AT52
PRODUCT_NAME := twrp_XQ-AT52
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-AT52
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-AT52-user 12 58.2.A.7.93 058002A007009304241360111 release-keys"

BUILD_FINGERPRINT := Sony/XQ-AT52/XQ-AT52:12/58.2.A.7.93/058002A007009304241360111:user/release-keys
