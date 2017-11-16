LOCAL_PATH := $(call my-dir)

# libqc-opt
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     icu4c.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_qc-opt
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# rmt_storage
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     ioprio.c

LOCAL_MODULE := libshim_rmt_storage
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# libril
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     libril.c

LOCAL_MODULE := libshim_ril
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    cipher.c

LOCAL_C_INCLUDES := boringssl
LOCAL_SHARED_LIBRARIES := libcrypto
LOCAL_MODULE := libshim_gps
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

