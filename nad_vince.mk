#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from vince device
$(call inherit-product, device/xiaomi/vince/device.mk)

# Inherit some common Nusantara goodies
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
NAD_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_POSTRENDER_CLEANUP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_USES_BLUR := false
USE_PIXEL_CHARGING := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vince
PRODUCT_NAME := nad_vince
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vince-user 8.1.0 OPM1.171019.019 V11.0.2.0.OEGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"
