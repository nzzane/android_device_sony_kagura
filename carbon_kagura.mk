# Copyright 2014 The Android Open Source Project
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

# Screen Resolution for the Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP tone common device parts
$(call inherit-product, device/sony/kagura/aosp_f8331.mk)

# Inherit Carbon tone common device parts
$(call inherit-product, device/sony/tone-common/platform_carbon.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Override Product Name for CarbonROM
PRODUCT_NAME := carbon_kagura
PRODUCT_MODEL := Xperia XZ

# Assert
TARGET_OTA_ASSERT_DEVICE := 8331,F8332,kagura

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Myself5"
