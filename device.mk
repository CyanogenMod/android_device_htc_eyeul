#
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product-if-exists, vendor/htc/eyeul/eyeul-vendor.mk)

# Inherit from msm8974-common
$(call inherit-product, device/htc/msm8974-common/msm8974-common.mk)

# Permissions
PRODUCT_COPY_FILES += \
    device/htc/eyeul/configs/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml

# Init
PRODUCT_PACKAGES += \
    init.target.rc

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default

# SSL Compat
PRODUCT_PACKAGES += \
    libboringssl-compat
