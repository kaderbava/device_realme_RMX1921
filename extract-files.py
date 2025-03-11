#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixups,
    lib_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/realme/RMX1921',
    'hardware/qcom-caf/sdm845',
    'hardware/qcom-caf/wlan',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/commonsys/display',
    'vendor/qcom/opensource/dataservices',
    'vendor/qcom/opensource/display',
]


def lib_fixup_vendor_suffix(lib: str, partition: str, *args, **kwargs):
    return f'{lib}_{partition}' if partition == 'vendor' else None


lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
    (
        'com.qualcomm.qti.dpm.api@1.0',
        'libmmosal',
        'vendor.qti.hardware.data.latency@1.0',
        'vendor.qti.hardware.fm@1.0',
        'vendor.qti.hardware.wifidisplaysession@1.0',
        'vendor.qti.imsrtpservice@3.0',
        'vendor.qti.latency@2.0',
    ): lib_fixup_vendor_suffix,
}

blob_fixups: blob_fixups_user_type = {
    'system_ext/bin/wfdservice': blob_fixup()
        .add_needed('libwfdservice_shim.so'),
    ('odm/lib64/mediadrm/libwvdrmengine.so', 'odm/lib64/libwvhidl.so'): blob_fixup()
        .add_needed('libcrypto_shim.so'),
    ('vendor/lib/hw/android.hardware.health@2.0-impl-2.1-qti.so', 'vendor/lib64/hw/android.hardware.health@2.0-impl-2.1-qti.so'): blob_fixup()
        .add_needed('libbase_shim.so'),
    'system_ext/lib/libwfdservice.so': blob_fixup()
        .replace_needed('android.media.audio.common.types-V3-cpp.so', 'android.media.audio.common.types-V4-cpp.so'),
    'vendor/etc/seccomp_policy/atfwd@2.0.policy': blob_fixup()
         .add_line_if_missing('gettid: 1'),
    'vendor/lib64/libarcsoft_relighting_pro_image.so': blob_fixup()
        .replace_needed('libstdc++.so', 'libstdc++_vendor.so'),
    'vendor/lib64/hw/camera.qcom.so': blob_fixup()
        .add_needed('libcamera_metadata_shim.so'),
    'vendor/lib64/libVDBlurlessAPI_v2.so': blob_fixup()
        .clear_symbol_version('remote_handle64_close')
        .clear_symbol_version('remote_handle64_invoke')
        .clear_symbol_version('remote_handle64_open'),
    'vendor/lib64/libVDSuperPhotoAPI.so': blob_fixup()
        .clear_symbol_version('remote_handle_close')
        .clear_symbol_version('remote_handle_invoke')
        .clear_symbol_version('remote_handle_open'),
}  # fmt: skip

module = ExtractUtilsModule(
    'RMX1921',
    'realme',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
