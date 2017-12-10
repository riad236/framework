LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        SoftFlacEncoder.cpp

LOCAL_C_INCLUDES := \
        frameworks/av/media/libstagefright/include \
        frameworks/native/include/media/openmax \
        external/flac/include

LOCAL_CFLAGS += -Werror
LOCAL_SANITIZE := signed-integer-overflow unsigned-integer-overflow cfi
LOCAL_SANITIZE_DIAG := cfi

LOCAL_SHARED_LIBRARIES := \
        libmedia libstagefright_omx libstagefright_foundation libutils liblog

LOCAL_STATIC_LIBRARIES := \
        libFLAC \

LOCAL_MODULE := libstagefright_soft_flacenc
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
