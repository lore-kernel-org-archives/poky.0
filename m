Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.8900.1677154339164645127
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Feb 2023 04:12:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inovex.de header.s=google header.b=jiM/020F;
 spf=pass (domain: inovex.de, ip: 209.85.221.52, mailfrom: anna-lena.marx@inovex.de)
Received: by mail-wr1-f52.google.com with SMTP id c12so10515148wrw.1
        for <poky@lists.yoctoproject.org>; Thu, 23 Feb 2023 04:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inovex.de; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wojbyPOGFD+GE8rRDAEGJ5Z5wGB7BkuMGgQHNMclfMk=;
        b=jiM/020FqJjzC0g6Ac7hJiG//XIowp3F6BLk3r+RCpaDsRILf3cBfO4L3Fp7veE5I7
         n0q3/c1igAxB9UVIu8qqjW9HMjY13zmCgPLHXH7qVDPMZRG8l7kpCht30Q+k+5547wr/
         r4Z//Mm3ChGD3y9NkwGNwqYXU9z0Nc2q9pgov0m6PGXeYvv6VocqapOtadQbBbeNws1b
         UFFDM68eVpbuXdNvV+xNfvhCUIGDRKC4eHjqo1k4i2D1ffeqI8kwhQD8iBGV/QEjr6vT
         h6hqJDguLLlhlz5AZ6FlDBuJ8HKpTYNEMtcxCZuTyQ2sZArMb6F/a7GR4LnBDfnMThT6
         PmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wojbyPOGFD+GE8rRDAEGJ5Z5wGB7BkuMGgQHNMclfMk=;
        b=pvihwT8zFN7qQMtK7JltO+uyUR/ziRP05r7Cf5NEyvR2qHZ00TbgPFSkD0mwsO3No5
         F1piqAR7HA4GOp20RM9CA4YPILT9YW6HCsEqAVnjIppLmso5xQD4a6bfzXaT77RvJ+rK
         5GBQHVdRgiLxgkvchzT9SPFRhiSeJZAWfwKW1z3nicbzaQ6OTUYxE2JqwZJYohjF1ACQ
         BReXwjivST0sFLk27UEp9pIip8G5OQYU/tU78NkfLsOguRbvsu0eCMCbQ3nl1qxlig2Q
         9NusoxhfsAPmsDiQAdgT5FfOH7btKMHn8fP4F0taLDILOKgOWQ0L3EehQq+Ib4GlqFGP
         MxHw==
X-Gm-Message-State: AO0yUKVHF1TZFD2JHMLYuDZ6ABIGjq7JvabomoA3m3o31fTAU8QUn9jc
	Zpw9OsqdfLab/13fl5BkNAdcSoXiy/mN7QL3ziX0JsAvwJlyisHTa2JMq58/WUehEMegg1pJMu7
	+RqTNR+EnO0yuy/bFwNSBwA/fyp3CYQ0aaXCS6oBz/ygL+EJlUHfZNyCzpV1nFb7FQqSW6OFhw+
	1Dv7fs67V4RQ==
X-Google-Smtp-Source: AK7set83cimM3gVn6q5/GB1h1j1EJwAty5kxn5gJLyW6GtZQwgU9gi/RKeD8DOwYzGYSiiordwfZRA==
X-Received: by 2002:a05:6000:1007:b0:2c7:454:e8b0 with SMTP id a7-20020a056000100700b002c70454e8b0mr8110989wrx.58.1677154337417;
        Thu, 23 Feb 2023 04:12:17 -0800 (PST)
Return-Path: <anna-lena.marx@inovex.de>
Received: from Dell.fritz.box ([2001:9e8:386f:d600:e361:487c:564b:e3a3])
        by smtp.gmail.com with ESMTPSA id u5-20020a05600c210500b003e00c453447sm11027177wml.48.2023.02.23.04.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 04:12:17 -0800 (PST)
From: "Anna-Lena Marx" <anna-lena.marx@inovex.de>
To: poky@lists.yoctoproject.org
Cc: Anna-Lena Marx <anna-lena.marx@inovex.de>
Subject: [PULL][PATCH 1/1] wic: Add support for F2FS in WIC rootfs plugin
Date: Thu, 23 Feb 2023 13:11:54 +0100
Message-Id: <447adb5dc9f54eb3f697810b83dd9d049a76b0b3.1677071966.git.anna-lena.marx@inovex.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1677071966.git.anna-lena.marx@inovex.de>
References: <cover.1677071966.git.anna-lena.marx@inovex.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Building F2FS rootfs is supported in Yocto - see
image_types.bbclass, but not in WIC.
This adds it as a nice convenience feature.

F2FS needs a minimum size of ~500M to operate correctly due to
an overprovision functionality.

Signed-off-by: Anna-Lena Marx <anna-lena.marx@inovex.de>
---
 meta/classes-recipe/image_types_wic.bbclass |  2 +-
 meta/recipes-core/meta/wic-tools.bb         |  2 +-
 scripts/lib/wic/help.py                     |  1 +
 scripts/lib/wic/ksparser.py                 |  2 +-
 scripts/lib/wic/misc.py                     |  1 +
 scripts/lib/wic/partition.py                | 32 ++++++++++++++++++++-
 6 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/meta/classes-recipe/image_types_wic.bbclass b/meta/classes-recipe/image_types_wic.bbclass
index c339b9bdfb..8ae5ecca4d 100644
--- a/meta/classes-recipe/image_types_wic.bbclass
+++ b/meta/classes-recipe/image_types_wic.bbclass
@@ -89,7 +89,7 @@ do_image_wic[recrdeptask] += "do_deploy"
 do_image_wic[deptask] += "do_image_complete"
 
 WKS_FILE_DEPENDS_DEFAULT = '${@bb.utils.contains_any("BUILD_ARCH", [ 'x86_64', 'i686' ], "syslinux-native", "",d)}'
-WKS_FILE_DEPENDS_DEFAULT += "bmap-tools-native cdrtools-native btrfs-tools-native squashfs-tools-native e2fsprogs-native erofs-utils-native"
+WKS_FILE_DEPENDS_DEFAULT += "bmap-tools-native cdrtools-native btrfs-tools-native squashfs-tools-native e2fsprogs-native erofs-utils-native f2fs-tools-native"
 # Unified kernel images need objcopy
 WKS_FILE_DEPENDS_DEFAULT += "virtual/${MLPREFIX}${TARGET_PREFIX}binutils"
 WKS_FILE_DEPENDS_BOOTLOADERS = ""
diff --git a/meta/recipes-core/meta/wic-tools.bb b/meta/recipes-core/meta/wic-tools.bb
index 9282d36a4d..d30ce66b56 100644
--- a/meta/recipes-core/meta/wic-tools.bb
+++ b/meta/recipes-core/meta/wic-tools.bb
@@ -7,7 +7,7 @@ DEPENDS = "\
            mtools-native bmap-tools-native grub-native cdrtools-native \
            btrfs-tools-native squashfs-tools-native pseudo-native \
            e2fsprogs-native util-linux-native tar-native erofs-utils-native \
-           virtual/${TARGET_PREFIX}binutils \
+           f2fs-tools-native virtual/${TARGET_PREFIX}binutils \
            "
 DEPENDS:append:x86 = " syslinux-native syslinux grub-efi systemd-boot"
 DEPENDS:append:x86-64 = " syslinux-native syslinux grub-efi systemd-boot"
diff --git a/scripts/lib/wic/help.py b/scripts/lib/wic/help.py
index 73e3380cde..0094065931 100644
--- a/scripts/lib/wic/help.py
+++ b/scripts/lib/wic/help.py
@@ -931,6 +931,7 @@ DESCRIPTION
              btrfs
              squashfs
              erofs
+             f2fs
              swap
 
          --fsoptions: Specifies a free-form string of options to be
diff --git a/scripts/lib/wic/ksparser.py b/scripts/lib/wic/ksparser.py
index d1e546b12d..e10ce6581d 100644
--- a/scripts/lib/wic/ksparser.py
+++ b/scripts/lib/wic/ksparser.py
@@ -159,7 +159,7 @@ class KickStart():
         part.add_argument('--fstype', default='vfat',
                           choices=('ext2', 'ext3', 'ext4', 'btrfs',
                                    'squashfs', 'vfat', 'msdos', 'erofs',
-                                   'swap', 'none'))
+                                   'f2fs', 'swap', 'none'))
         part.add_argument('--mkfs-extraopts', default='')
         part.add_argument('--label')
         part.add_argument('--use-label', action='store_true')
diff --git a/scripts/lib/wic/misc.py b/scripts/lib/wic/misc.py
index 2b90821b30..dc84a37423 100644
--- a/scripts/lib/wic/misc.py
+++ b/scripts/lib/wic/misc.py
@@ -41,6 +41,7 @@ NATIVE_RECIPES = {"bmaptool": "bmap-tools",
                   "mkfs.ext3": "e2fsprogs",
                   "mkfs.ext4": "e2fsprogs",
                   "mkfs.vfat": "dosfstools",
+                  "mkfs.f2fs": "f2fs-tools",
                   "mksquashfs": "squashfs-tools",
                   "mkswap": "util-linux",
                   "mmd": "mtools",
diff --git a/scripts/lib/wic/partition.py b/scripts/lib/wic/partition.py
index 382afa44bc..6adcaa041f 100644
--- a/scripts/lib/wic/partition.py
+++ b/scripts/lib/wic/partition.py
@@ -208,7 +208,7 @@ class Partition():
         Prepare content for a rootfs partition i.e. create a partition
         and fill it from a /rootfs dir.
 
-        Currently handles ext2/3/4, btrfs, vfat and squashfs.
+        Currently handles ext2/3/4, btrfs, vfat, squashfs and f2fs.
         """
 
         rootfs = "%s/rootfs_%s.%s.%s" % (cr_workdir, self.label,
@@ -351,6 +351,36 @@ class Partition():
              self.mkfs_extraopts, self.fsuuid, rootfs)
         exec_native_cmd(mkfs_cmd, native_sysroot, pseudo=pseudo)
 
+    def prepare_rootfs_f2fs(self, rootfs, cr_workdir, oe_builddir, rootfs_dir,
+                            native_sysroot, pseudo):
+        """
+        Prepare content for a f2fs rootfs partition.
+        """
+        du_cmd = "du -ks %s" % rootfs_dir
+        out = exec_cmd(du_cmd)
+        actual_rootfs_size = int(out.split()[0])
+
+        min_f2fs_size = 524288
+        rootfs_size = self.get_rootfs_size(actual_rootfs_size)
+        if rootfs_size < min_f2fs_size:
+            rootfs_size = min_f2fs_size
+
+        with open(rootfs, 'w') as sparse:
+            os.ftruncate(sparse.fileno(), rootfs_size * 1024)
+
+        extraopts = self.mkfs_extraopts or "-O extra_attr,compression"
+
+        label_str = ""
+        if self.label:
+            label_str = "-l %s" % self.label
+
+        mkfs_f2fs_cmd = "mkfs.f2fs %s %s %s" % \
+                        (label_str, extraopts, rootfs)
+        exec_native_cmd(mkfs_f2fs_cmd, native_sysroot, pseudo=pseudo)
+
+        sload_f2fs_cmd = "sload.f2fs -f %s %s" % (rootfs_dir, rootfs)
+        exec_native_cmd(sload_f2fs_cmd, native_sysroot, pseudo=pseudo)
+
     def prepare_rootfs_msdos(self, rootfs, cr_workdir, oe_builddir, rootfs_dir,
                              native_sysroot, pseudo):
         """
-- 
2.39.2

