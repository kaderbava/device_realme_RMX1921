LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := SoundAmplifierPrebuilt_v4.7.638126989 CalendarGooglePrebuilt FilesPrebuilt Photos ScribePrebuilt_v7.0.633113815 DevicePolicyPrebuilt-v10052480 RecorderPrebuilt GoogleCamera SwitchAccessPrebuilt_1.15.0.629986523 VoiceAccessPrebuilt SafetyHubPrebuilt talkback arcore-1.42
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
