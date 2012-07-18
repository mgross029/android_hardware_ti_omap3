ifeq ($(BUILD_WBAMR_DEC_TEST),1)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)



LOCAL_SRC_FILES:= \
	WBAmrDecTest.c
	
LOCAL_C_INCLUDES := \
	$(TI_OMX_AUDIO)/wbamr_dec/inc \
	$(TI_OMX_INCLUDES)

LOCAL_SHARED_LIBRARIES := $(TI_OMX_COMP_SHARED_LIBRARIES)

	
LOCAL_CFLAGS := $(TI_OMX_CFLAGS) -DOMX_DEBUG

LOCAL_MODULE:= WBAmrDecTest_common
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
endif
