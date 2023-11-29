LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := RecorderPrebuilt Photos Drive Maps MeetPrebuilt PrebuiltGmail SoundAmplifierPrebuilt GoogleCamera AdaptiveVPNPrebuilt CalendarGooglePrebuilt CarrierLocation CarrierMetrics DevicePolicyPrebuilt DiagnosticsToolPrebuilt FilesPrebuilt SafetyHubPrebuilt ScribePrebuilt Showcase Tycho Papers Videos PixelWallpapers2023 PixelLiveWallpaperPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
