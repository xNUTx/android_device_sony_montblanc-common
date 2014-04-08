diff --git a/config/fstab.st-ericsson b/config/fstab.st-ericsson
index 67e6eb9..c1c4d4c 100644
--- a/config/fstab.st-ericsson
+++ b/config/fstab.st-ericsson
@@ -12,7 +12,7 @@
 /dev/block/mmcblk0p9                        /recovery         emmc      defaults                                                                                 defaults
 
 # Internal SD Card
-/devices/sdi4/mmc_host/mmc1/mmc1            auto              auto      nosuid,nodev                                                                             wait,voldmanaged=sdcard0:14,nonremovable
+/devices/sdi4/mmc_host/mmc1/mmc1            auto              auto      nosuid,nodev                                                                             wait,voldmanaged=sdcard0:14,nonremovable,noemulatedsd
 
 # USB Disk
 /devices/platform/musb-ux500.0/musb-hdrc    /storage/usbdisk  auto      defaults                                                                                 wait,voldmanaged=usbdisk:auto
diff --git a/config/init.st-ericsson.rc b/config/init.st-ericsson.rc
index 92d559c..938b934 100644
--- a/config/init.st-ericsson.rc
+++ b/config/init.st-ericsson.rc
@@ -4,27 +4,16 @@ import init.bluetooth.rc
 
 on early-init
     mkdir /mnt 0775 root system
-
-    mkdir /mnt/shell 0700 shell shell
-    mkdir /mnt/media_rw 0700 media_rw media_rw
-    mkdir /storage 0751 root sdcard_r
-
-    # storage directories
-    mkdir /mnt/media_rw/sdcard0 0700 media_rw media_rw
-    mkdir /mnt/media_rw/usbdisk 0700 media_rw media_rw
-
-    # fuse storage directories
-    mkdir /storage/sdcard0 0700 root root
-    mkdir /storage/usbdisk 0700 root root
-
-    export EXTERNAL_STORAGE /storage/sdcard0
+    mkdir /storage 0050 root sdcard_r
+    mkdir /storage/sdcard0 0000 system system
+    mkdir /storage/usbdisk 0000 system system
 
     # for backwards compatibility
     symlink /storage/sdcard0 /sdcard
     symlink /storage/sdcard0 /mnt/sdcard
+    export EXTERNAL_STORAGE /storage/sdcard0
     symlink /storage/usbdisk /usbdisk
     symlink /storage/usbdisk /mnt/usbdisk
-
     chmod 0644 /proc/cmdline
 
 on init
