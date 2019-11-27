Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web11.781.1574823121480936774
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 18:52:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: chee.yang.lee@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Nov 2019 18:52:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; 
   d="scan'208";a="199033033"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga007.jf.intel.com with ESMTP; 26 Nov 2019 18:52:00 -0800
From: "Lee Chee Yang" <chee.yang.lee@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto-bsp][PATCH] genericx86: wic wks do not hardcode loader
Date: Wed, 27 Nov 2019 10:51:59 +0800
Message-Id: <1574823119-84851-1-git-send-email-chee.yang.lee@intel.com>
X-Mailer: git-send-email 2.7.4

From: Chee Yang Lee <chee.yang.lee@intel.com>

replace .wks with .wks.in and refer loader to EFI_PROVIDER
to enable different bootloader.

Signed-off-by: Chee Yang Lee <chee.yang.lee@intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 meta-yocto-bsp/wic/genericx86.wks                         | 7 -------
 meta-yocto-bsp/wic/genericx86.wks.in                      | 7 +++++++
 3 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 meta-yocto-bsp/wic/genericx86.wks
 create mode 100644 meta-yocto-bsp/wic/genericx86.wks.in

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index f83ce5c..5db91be 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -20,6 +20,6 @@ GLIBC_ADDONS = "nptl"
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 
 IMAGE_FSTYPES += "wic wic.bmap"
-WKS_FILE ?= "genericx86.wks"
+WKS_FILE ?= "genericx86.wks.in"
 do_image_wic[depends] += "gptfdisk-native:do_populate_sysroot"
 do_image_wic[recrdeptask] += "do_bootimg"
diff --git a/meta-yocto-bsp/wic/genericx86.wks b/meta-yocto-bsp/wic/genericx86.wks
deleted file mode 100644
index dab719c..0000000
--- a/meta-yocto-bsp/wic/genericx86.wks
+++ /dev/null
@@ -1,7 +0,0 @@
-# short-description: Create an EFI disk image for genericx86*
-# long-description: Creates a partitioned EFI disk image for genericx86* machines
-part /boot --source bootimg-efi --sourceparams="loader=grub-efi" --ondisk sda --label msdos --active --align 1024
-part / --source rootfs --ondisk sda --fstype=ext4 --label platform --align 1024 --use-uuid
-part swap --ondisk sda --size 44 --label swap1 --fstype=swap
-
-bootloader --ptable gpt --timeout=5 --append="rootfstype=ext4 console=ttyS0,115200 console=tty0"
diff --git a/meta-yocto-bsp/wic/genericx86.wks.in b/meta-yocto-bsp/wic/genericx86.wks.in
new file mode 100644
index 0000000..7c09ad0
--- /dev/null
+++ b/meta-yocto-bsp/wic/genericx86.wks.in
@@ -0,0 +1,7 @@
+# short-description: Create an EFI disk image for genericx86*
+# long-description: Creates a partitioned EFI disk image for genericx86* machines
+part /boot --source bootimg-efi --sourceparams="loader=${EFI_PROVIDER}" --ondisk sda --label msdos --active --align 1024
+part / --source rootfs --ondisk sda --fstype=ext4 --label platform --align 1024 --use-uuid
+part swap --ondisk sda --size 44 --label swap1 --fstype=swap
+
+bootloader --ptable gpt --timeout=5 --append="rootfstype=ext4 console=ttyS0,115200 console=tty0"
-- 
2.7.4

