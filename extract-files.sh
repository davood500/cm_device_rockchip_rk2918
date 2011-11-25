#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=rk2918
MANUFACTURER=rockchip

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /rk29xxnand_ko.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rk29xxnand_ko.ko
adb pull /system/lib/egl/libEGL_VIVANTE.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_VIVANTE.so
adb pull /system/lib/egl/libGLESv1_CM_VIVANTE.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_VIVANTE.so
adb pull /system/lib/egl/libGLESv2_VIVANTE.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_VIVANTE.so
adb pull /system/lib/hw/copybit.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/copybit.rk29board.so
adb pull /system/lib/hw/gralloc.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.rk29board.so
adb pull /system/lib/hw/lights.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lights.rk29board.so
adb pull /system/lib/hw/overlay.rk29sdk.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/overlay.rk29sdk.so
adb pull /system/lib/hw/sensors.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors.rk29board.so
adb pull /system/lib/libGAL.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGAL.so
adb pull /system/lib/libGLESv2SC.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2SC.so
adb pull /system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libaudio.so
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libaudiopolicy.so
adb pull /system/lib/modules/wlan.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wlan.ko


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudiopolicy.so:obj/lib/libaudiopolicy.so

# All the blobs necessary for rk2918
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rk29xxnand_ko.ko:root/lib/modules/rk29xxnand_ko.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_VIVANTE.so:system/lib/egl/libEGL_VIVANTE.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_VIVANTE.so:system/lib/egl/libGLESv1_CM_VIVANTE.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_VIVANTE.so:system/lib/egl/libGLESv2_VIVANTE.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/copybit.rk29board.so:system/lib/hw/copybit.rk29board.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.rk29board.so:system/lib/hw/gralloc.rk29board.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.rk29board.so:system/lib/hw/lights.rk29board.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/overlay.rk29sdk.so:system/lib/hw/overlay.rk29board.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.rk29board.so:system/lib/hw/sensors.rk29board.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGAL.so:system/lib/libGAL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2SC.so:system/lib/libGLESv2SC.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudiopolicy.so:system/lib/libaudiopolicy.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wlan.ko:system/lib/modules/wlan.ko
EOF

./setup-makefiles.sh
