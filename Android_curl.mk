
VERSION:= curl-7.52.1
LOCAL_PATH:=  $(call my-dir)
common_CFLAGS := -Wpointer-arith -Wwrite-strings -Wunused -Winline -Wnested-externs \
-Wmissing-declarations -Wmissing-prototypes -Wno-long-long -Wfloat-equal -Wno-multichar \
-Wsign-compare -Wno-format-nonliteral -Wendif-labels -Wstrict-prototypes \
-Wdeclaration-after-statement -Wno-system-headers -DHAVE_CONFIG_H

#########################
# # Build the curl binary

include $(CLEAR_VARS)
include $(LOCAL_PATH)/$(VERSION)/src/Makefile.inc
LOCAL_SRC_FILES := $(addprefix $(VERSION)/src/,$(CURL_CFILES))
LOCAL_LDFLAGS := $(LOCAL_PATH)/obj/local/$(TARGET_ARCH_ABI)/libcurl.a
LOCAL_SYSTEM_SHARED_LIBRARIES := libc
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(VERSION)/include/ $(LOCAL_PATH)/$(VERSION)/lib
LOCAL_LDFLAGS += -pie -fPIE
LOCAL_MODULE= curl
LOCAL_CFLAGS += $(common_CFLAGS)  -pie -fPIE

include $(BUILD_EXECUTABLE)

