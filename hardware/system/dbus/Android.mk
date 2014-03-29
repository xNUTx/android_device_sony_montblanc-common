# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

LOG_TO_ANDROID_LOGCAT := true

include $(CLEAR_VARS)

SRC := $(LOCAL_PATH)

LOCAL_SRC_FILES:= \
   $(SRC)/dbus-address.c \
   $(SRC)/dbus-auth.c \
   $(SRC)/dbus-bus.c \
   $(SRC)/dbus-connection.c \
   $(SRC)/dbus-credentials.c \
   $(SRC)/dbus-dataslot.c \
   $(SRC)/dbus-errors.c \
   $(SRC)/dbus-file.c \
   $(SRC)/dbus-file-unix.c \
   $(SRC)/dbus-hash.c \
   $(SRC)/dbus-internals.c \
   $(SRC)/dbus-keyring.c \
   $(SRC)/dbus-list.c \
   $(SRC)/dbus-mainloop.c \
   $(SRC)/dbus-marshal-basic.c \
   $(SRC)/dbus-marshal-byteswap.c \
   $(SRC)/dbus-marshal-header.c \
   $(SRC)/dbus-marshal-recursive.c \
   $(SRC)/dbus-marshal-validate.c \
   $(SRC)/dbus-mempool.c \
   $(SRC)/dbus-memory.c \
   $(SRC)/dbus-message.c \
   $(SRC)/dbus-nonce.c \
   $(SRC)/dbus-pending-call.c \
   $(SRC)/dbus-pipe.c \
   $(SRC)/dbus-pipe-unix.c \
   $(SRC)/dbus-resources.c \
   $(SRC)/dbus-server.c \
   $(SRC)/dbus-server-socket.c \
   $(SRC)/dbus-server-unix.c \
   $(SRC)/dbus-sha.c \
   $(SRC)/dbus-shell.c \
   $(SRC)/dbus-signature.c \
   $(SRC)/dbus-spawn.c \
   $(SRC)/dbus-string.c \
   $(SRC)/dbus-string-util.c \
   $(SRC)/dbus-sysdeps.c \
   $(SRC)/dbus-sysdeps-pthread.c \
   $(SRC)/dbus-sysdeps-unix.c \
   $(SRC)/dbus-sysdeps-util-unix.c \
   $(SRC)/dbus-timeout.c \
   $(SRC)/dbus-threads.c \
   $(SRC)/dbus-transport.c \
   $(SRC)/dbus-transport-socket.c \
   $(SRC)/dbus-transport-unix.c \
   $(SRC)/dbus-object-tree.c \
   $(SRC)/dbus-userdb.c \
   $(SRC)/dbus-userdb-util.c \
   $(SRC)/dbus-watch.c \
   $(SRC)/sd-daemon.c

LOCAL_C_INCLUDES := \
	$(SRC)
LOCAL_MODULE:=libdbus
LOCAL_CFLAGS+= \
	-DDBUS_COMPILATION \
	-DANDROID_MANAGED_SOCKET \
	-DANDROID_ATOMIC \
	-DDBUS_MACHINE_UUID_FILE=\"/etc/machine-id\" \
	-DDBUS_SYSTEM_CONFIG_FILE=\"/system/etc/dbus.conf\" \
	-DDBUS_SESSION_CONFIG_FILE=\"/system/etc/session.conf\"
ifeq ($(LOG_TO_ANDROID_LOGCAT),true)
LOCAL_CFLAGS+= -DDBUS_ANDROID_LOG
LOCAL_SHARED_LIBRARIES+= libcutils
endif

include $(BUILD_SHARED_LIBRARY)