#!/bin/bash
#
# Copyright (C) 2016 The LineageOS Project
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

set -e

DEVICE=hero2qlteue
VENDOR=samsung

INITIAL_COPYRIGHT_YEAR=2016

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

CM_ROOT="$MY_DIR"/../../..

HELPER="$CM_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$CM_ROOT"

# Copyright headers and guards
write_headers

write_makefiles "$MY_DIR"/proprietary-files.txt

cat << EOF >> "$ANDROIDMK"

EOF

printf '\n%s\n' "\$(call inherit-product, vendor/qcom/binaries/msm8996/graphics/graphics-vendor.mk)" >> "$PRODUCTMK"

# Append the calls to firmware images
append_firmware_calls_to_makefiles

# Finish
write_footers
