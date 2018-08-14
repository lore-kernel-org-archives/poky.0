Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15491E00A54; Mon, 13 Aug 2018 18:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670C9E00A54
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7E1cMwU013119
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:22 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 13 Aug 2018 18:38:21 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 14 Aug 2018 09:31:23 +0800
Message-ID: <20180814013126.191534-4-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20180814013126.191534-1-kexin.hao@windriver.com>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/6] wic: bootimg-partition: Add do_configure_partition() method
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2018 01:38:23 -0000
Content-Type: text/plain

We want to add some u-boot specific config file. Before doing this,
we need know what files will be installed into this partition. So
move the codes about parsing the IMAGE_BOOT_FILES into
do_configure_partition(). No function change.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../lib/wic/plugins/source/bootimg-partition.py    | 61 +++++++++++++---------
 1 file changed, 37 insertions(+), 24 deletions(-)

diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py b/scripts/lib/wic/plugins/source/bootimg-partition.py
index 9480eed6d8a3..364b189758eb 100644
--- a/scripts/lib/wic/plugins/source/bootimg-partition.py
+++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
@@ -44,27 +44,17 @@ class BootimgPartitionPlugin(SourcePlugin):
     name = 'bootimg-partition'
 
     @classmethod
-    def do_prepare_partition(cls, part, source_params, cr, cr_workdir,
+    def do_configure_partition(cls, part, source_params, cr, cr_workdir,
                              oe_builddir, bootimg_dir, kernel_dir,
-                             rootfs_dir, native_sysroot):
+                             native_sysroot):
         """
-        Called to do the actual content population for a partition i.e. it
-        'prepares' the partition to be incorporated into the image.
-        In this case, does the following:
-        - sets up a vfat partition
-        - copies all files listed in IMAGE_BOOT_FILES variable
+        Called before do_prepare_partition()
         """
-        hdddir = "%s/boot.%d" % (cr_workdir, part.lineno)
-        install_cmd = "install -d %s" % hdddir
-        exec_cmd(install_cmd)
-
         if not kernel_dir:
             kernel_dir = get_bitbake_var("DEPLOY_DIR_IMAGE")
             if not kernel_dir:
                 raise WicError("Couldn't find DEPLOY_DIR_IMAGE, exiting")
 
-        logger.debug('Kernel dir: %s', bootimg_dir)
-
         boot_files = None
         for (fmt, id) in (("_uuid-%s", part.uuid), ("_label-%s", part.label), (None, None)):
             if fmt:
@@ -94,9 +84,9 @@ class BootimgPartitionPlugin(SourcePlugin):
             logger.debug('Destination entry: %r', dst_entry)
             deploy_files.append(dst_entry)
 
+        cls.install_task = [];
         for deploy_entry in deploy_files:
             src, dst = deploy_entry
-            install_task = []
             if '*' in src:
                 # by default install files under their basename
                 entry_name_fn = os.path.basename
@@ -113,17 +103,40 @@ class BootimgPartitionPlugin(SourcePlugin):
                 for entry in srcs:
                     src = os.path.relpath(entry, kernel_dir)
                     entry_dst_name = entry_name_fn(entry)
-                    install_task.append((src, entry_dst_name)))
+                    cls.install_task.append((src, entry_dst_name))
             else:
-                install_task = [(src, dst)]
-
-            for task in install_task:
-                src_path, dst_path = task
-                logger.debug('Install %s as %s', src_path, dst_path)
-                install_cmd = "install -m 0644 -D %s %s" \
-                              % (os.path.join(kernel_dir, src_path),
-                                 os.path.join(hdddir, dst_path))
-                exec_cmd(install_cmd)
+                cls.install_task.append((src, dst))
+
+    @classmethod
+    def do_prepare_partition(cls, part, source_params, cr, cr_workdir,
+                             oe_builddir, bootimg_dir, kernel_dir,
+                             rootfs_dir, native_sysroot):
+        """
+        Called to do the actual content population for a partition i.e. it
+        'prepares' the partition to be incorporated into the image.
+        In this case, does the following:
+        - sets up a vfat partition
+        - copies all files listed in IMAGE_BOOT_FILES variable
+        """
+        hdddir = "%s/boot.%d" % (cr_workdir, part.lineno)
+        install_cmd = "install -d %s" % hdddir
+        exec_cmd(install_cmd)
+
+        if not kernel_dir:
+            kernel_dir = get_bitbake_var("DEPLOY_DIR_IMAGE")
+            if not kernel_dir:
+                raise WicError("Couldn't find DEPLOY_DIR_IMAGE, exiting")
+
+        logger.debug('Kernel dir: %s', bootimg_dir)
+
+
+        for task in cls.install_task:
+            src_path, dst_path = task
+            logger.debug('Install %s as %s', src_path, dst_path)
+            install_cmd = "install -m 0644 -D %s %s" \
+                          % (os.path.join(kernel_dir, src_path),
+                             os.path.join(hdddir, dst_path))
+            exec_cmd(install_cmd)
 
         logger.debug('Prepare boot partition using rootfs in %s', hdddir)
         part.prepare_rootfs(cr_workdir, oe_builddir, hdddir,
-- 
2.14.4


