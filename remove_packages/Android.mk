LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := remove_packages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Drive GoogleTTS LocationHistoryPrebuilt Maps Photos PrebuiltGmail Videos
LOCAL_OVERRIDES_PACKAGES += YouTube YouTubeMusicPrebuilt talkback TurboPrebuilt GoogleFeedback
LOCAL_OVERRIDES_PACKAGES += WellbeingPrebuilt AndroidAutoStubPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
