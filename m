Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A150E00AB3; Mon, 13 Aug 2018 18:38:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44C8E00A54
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7E1cNQC008493
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:23 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 13 Aug 2018 18:38:23 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 14 Aug 2018 09:31:24 +0800
Message-ID: <20180814013126.191534-5-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20180814013126.191534-1-kexin.hao@windriver.com>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 4/6] wic: bootimg-partition: Add support to create the u-boot boot config file
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
X-List-Received-Date: Tue, 14 Aug 2018 01:38:24 -0000
Content-Type: text/plain

By leveraging the distro boot command feature in the u-boot, we can
compose the corresponding extlinux.conf when creating the wic image,
and let u-boot boot the kernel automatically. For more detail about
the u-boot distro boot command feature, please see doc/README.distro
in u-boot source files.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../lib/wic/plugins/source/bootimg-partition.py    | 51 ++++++++++++++++++++--
 1 file changed, 48 insertions(+), 3 deletions(-)

diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py b/scripts/lib/wic/plugins/source/bootimg-partition.py
index 364b189758eb..7d61595d0414 100644
--- a/scripts/lib/wic/plugins/source/bootimg-partition.py
+++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
@@ -48,8 +48,12 @@ class BootimgPartitionPlugin(SourcePlugin):
                              oe_builddir, bootimg_dir, kernel_dir,
                              native_sysroot):
         """
-        Called before do_prepare_partition()
+        Called before do_prepare_partition(), create u-boot specific boot config
         """
+        hdddir = "%s/boot.%d" % (cr_workdir, part.lineno)
+        install_cmd = "install -d %s" % hdddir
+        exec_cmd(install_cmd)
+
         if not kernel_dir:
             kernel_dir = get_bitbake_var("DEPLOY_DIR_IMAGE")
             if not kernel_dir:
@@ -107,6 +111,49 @@ class BootimgPartitionPlugin(SourcePlugin):
             else:
                 cls.install_task.append((src, dst))
 
+        if source_params.get('loader') != "u-boot":
+            return
+
+        # The kernel types supported by the sysboot of u-boot
+        kernel_types = ["uImage", "zImage", "Image", "vmlinux", "fitImage"]
+        has_dtb = False
+        fdt_dir = '/'
+        kernel_name = None
+        for task in cls.install_task:
+            src, dst = task
+            # Find the kernel image name
+            for image in kernel_types:
+                if re.match(image, src):
+                    if not kernel_name:
+                        kernel_name = os.path.join('/', dst)
+                    else:
+                        raise WicError('Multi kernel file founded')
+
+            # We suppose that all the dtb are in the same directory
+            if re.search(r'\.dtb', src) and fdt_dir == '/':
+                has_dtb = True
+                fdt_dir = os.path.join(fdt_dir, os.path.dirname(dst))
+
+        if not kernel_name:
+            raise WicError('No kernel file founded')
+
+        # Compose the extlinux.conf
+        extlinux_conf = "default Yocto\n"
+        extlinux_conf += "label Yocto\n"
+        extlinux_conf += "   kernel %s\n" % kernel_name
+        if has_dtb:
+            extlinux_conf += "   fdtdir %s\n" % fdt_dir
+        bootloader = cr.ks.bootloader
+        extlinux_conf += "append root=%s rootwait %s\n" \
+                         % (cr.rootdev, bootloader.append if bootloader.append else '')
+
+        install_cmd = "install -d %s/extlinux/" % hdddir
+        exec_cmd(install_cmd)
+        cfg = open("%s/extlinux/extlinux.conf" % hdddir, "w")
+        cfg.write(extlinux_conf)
+        cfg.close()
+
+
     @classmethod
     def do_prepare_partition(cls, part, source_params, cr, cr_workdir,
                              oe_builddir, bootimg_dir, kernel_dir,
@@ -119,8 +166,6 @@ class BootimgPartitionPlugin(SourcePlugin):
         - copies all files listed in IMAGE_BOOT_FILES variable
         """
         hdddir = "%s/boot.%d" % (cr_workdir, part.lineno)
-        install_cmd = "install -d %s" % hdddir
-        exec_cmd(install_cmd)
 
         if not kernel_dir:
             kernel_dir = get_bitbake_var("DEPLOY_DIR_IMAGE")
-- 
2.14.4


