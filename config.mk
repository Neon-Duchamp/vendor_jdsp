#
# Copyright (C) 2023 GenesisOS
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
#

JAMESDSP_PATH := vendor/JamesDSP

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   $(JAMESDSP_PATH)

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(JAMESDSP_PATH)/sepolicy/vendor

# Proprietary blobs
PRODUCT_COPY_FILES += \
    $(JAMESDSP_PATH)/proprietary/vendor/lib/soundfx/libjamesdsp.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libjamesdsp.so \
    $(JAMESDSP_PATH)/proprietary/vendor/lib64/soundfx/libjamesdsp.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libjamesdsp.so

PRODUCT_PACKAGES += \
    JamesDSPManager
