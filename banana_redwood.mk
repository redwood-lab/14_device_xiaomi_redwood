#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/banana/config/common.mk)

# MIUI Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22101320G
PRODUCT_NAME := banana_redwood

# BananaDroid
BANANA_MAINTAINER := franlop77
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
WITH_GAPPS := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := redwood_global
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redwood_global-user 13 RKQ1.211001.001 V14.0.4.0.TMSMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/redwood_global/redwood:13/RKQ1.211001.001/V14.0.4.0.TMSMIXM:user/release-keys
