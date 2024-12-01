LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := SoundAmplifierPrebuilt CalendarGooglePrebuilt FilesPrebuilt Photos ScribePrebuilt DevicePolicyPrebuilt RecorderPrebuilt GoogleCamera SwitchAccessPrebuilt VoiceAccessPrebuilt DreamlinerPrebuilt DreamlinerUpdater HelpRtcPrebuilt SafetyHubPrebuilt PlayAutoInstallConfig talkback Updater
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
