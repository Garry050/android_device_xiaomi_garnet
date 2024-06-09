#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# MiuiCamera
$(call inherit-product-if-exists, vendor/xiaomi/garnet-miuicamera/products/miuicamera.mk)

# GApps
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

# Crdroid stuff
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := XIG05

PRODUCT_SYSTEM_NAME := XIG05_jp_kdi
PRODUCT_SYSTEM_DEVICE := XIG05

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XIG05_jp_kdi-user 14 SKQ1.230401.001 V816.0.2.0.UNRJPKD release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/XIG05_jp_kdi/XIG05:12/SKQ1.230401.001/V816.0.2.0.UNRJPKD:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
