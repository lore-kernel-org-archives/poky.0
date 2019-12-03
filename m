Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.2136.1575351362201440723
 for <poky@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 21:36:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: chee.yang.lee@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 21:36:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,271,1571727600"; 
   d="scan'208";a="385177366"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga005.jf.intel.com with ESMTP; 02 Dec 2019 21:36:00 -0800
From: "Lee Chee Yang" <chee.yang.lee@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto-bsp][PATCH 1/2] genericx86: wic wks do not hardcode loader
Date: Tue,  3 Dec 2019 13:35:58 +0800
Message-Id: <1575351359-45850-1-git-send-email-chee.yang.lee@intel.com>
X-Mailer: git-send-email 2.7.4

From: Chee Yang Lee <chee.yang.lee@intel.com>

replace .wks with .wks.in and refer loader to EFI_PROVIDER
to enable different bootloader.
soft assign default EFI_PROVIDER "grub-efi" for genericx86.

Signed-off-by: Chee Yang Lee <chee.yang.lee@intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 3 ++-
 meta-yocto-bsp/wic/genericx86.wks                         | 7 -------
 meta-yocto-bsp/wic/genericx86.wks.in                      | 7 +++++++
 3 files changed, 9 insertions(+), 8 deletions(-)
 delete mode 100644 meta-yocto-bsp/wic/genericx86.wks
 create mode 100644 meta-yocto-bsp/wic/genericx86.wks.in

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index f83ce5c..a6c396c 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -20,6 +20,7 @@ GLIBC_ADDONS = "nptl"
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 
 IMAGE_FSTYPES += "wic wic.bmap"
-WKS_FILE ?= "genericx86.wks"
+WKS_FILE ?= "genericx86.wks.in"
+EFI_PROVIDER ??= "grub-efi"
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

