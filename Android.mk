LOCAL_PATH:= $(call my-dir)

INCLUDES = $(LOCAL_PATH)
INCLUDES += external/libnl/include
LIBS += -lnl-3

########################
include $(CLEAR_VARS)
LOCAL_SRC_FILES:= nfacct.c
LOCAL_MODULE := nfacct

LOCAL_SHARED_LIBRARIES += libnl
LOCAL_C_INCLUDES := $(INCLUDES)

include $(BUILD_EXECUTABLE)
