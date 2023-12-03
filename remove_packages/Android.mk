LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := RecorderPrebuilt Photos SoundAmplifierPrebuilt GoogleCamera AdaptiveVPNPrebuilt AmbientStreaming CalendarGooglePrebuilt CarrierLocation CarrierMetrics DevicePolicyPrebuilt DiagnosticsToolPrebuilt FilesPrebuilt ScribePrebuilt Showcase Tycho SafetyHubPrebuilt Papers PixelWallpapers2022a PixelLiveWallpaperPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
