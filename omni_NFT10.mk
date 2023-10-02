#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from NFT10 device
$(call inherit-product, device/h152wo/NFT10/device.mk)

PRODUCT_DEVICE := NFT10
PRODUCT_NAME := omni_NFT10
PRODUCT_BRAND := H152WO
PRODUCT_MODEL := NFT10
PRODUCT_MANUFACTURER := h152wo

PRODUCT_GMS_CLIENTID_BASE := android-h152wo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_bird_k61v1_64_bsp-user 9 PPR1.180610.011 1616672266 test-keys"

BUILD_FINGERPRINT := H152WO/NFT10/NFT10:9/PPR1.180610.011/1616672266:user/test-keys
