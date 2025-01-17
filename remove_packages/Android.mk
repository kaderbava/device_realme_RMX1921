LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := GoogleCamera CalendarGooglePrebuilt Photos FilesPrebuilt SoundAmplifierPrebuilt_v4.7.638126989 SafetyHubSuwPrebuilt ScribePrebuilt_v7.0.633113815 talkback DevicePolicyPrebuilt-v10052480 SwitchAccessPrebuilt_1.15.0.629986523
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
