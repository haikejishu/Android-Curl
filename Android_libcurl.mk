VERSION := curl-7.52.1
LOCAL_PATH := $(call my-dir)

common_CFLAGS := -Wpointer-arith -Wwrite-strings -Wunused -Winline -Wnested-externs \
-Wmissing-declarations -Wmissing-prototypes -Wno-long-long -Wfloat-equal -Wno-multichar \
-Wsign-compare -Wno-format-nonliteral -Wendif-labels -Wstrict-prototypes \
-Wdeclaration-after-statement -Wno-system-headers -DHAVE_CONFIG_H

include $(CLEAR_VARS)
include $(LOCAL_PATH)/$(VERSION)/lib/Makefile.inc

LOCAL_SRC_FILES := $(addprefix $(VERSION)/lib/,$(CSOURCES))
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(VERSION)/include/ $(LOCAL_PATH)/$(VERSION)/lib
LOCAL_CFLAGS += $(common_CFLAGS) -DBUILDING_LIBCURL -fPIC
LOCAL_MODULE:= libcurl

# Build the libcurl static library
include $(BUILD_STATIC_LIBRARY)

# Build the libcurl shared library
# include $(BUILD_SHARED_LIBRARY)