LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := pvrsrvctl.c
LOCAL_LDFLAGS := -L $(TARGET_OUT_VENDOR)/lib
LOCAL_LDLIBS := -lsrv_init -lsrv_um
pvrsrvctl: $(TARGET_OUT_VENDOR)/lib/lsrv_init.so
pvrsrvctl: $(TARGET_OUT_VENDOR)/lib/lsrv_um.so
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/bin
LOCAL_MODULE := pvrsrvctl
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
