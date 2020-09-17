Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.16450.1600352011402421242
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 07:13:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: khairul.rohaizzat.jamaluddin@intel.com)
IronPort-SDR: IdxE0otEVSINx0V1E+c95wwSqArPsseTyBZ+gdIPhCibf45aB3Vvq4VqVAM5LV4SZQHxo4ea0z
 0oavE2W9SSig==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="160628531"
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; 
   d="scan'208";a="160628531"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 07:13:30 -0700
IronPort-SDR: jsivLd5qL9DFUGkOQKQImLuLrpK1LzGs/djTH4aXHlX9MYZHJ+NzNUQAOcMCPdty3bkGvJk8td
 sHQE3yUZespA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; 
   d="scan'208";a="508456245"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 07:13:28 -0700
From: "Jamaluddin, Khairul Rohaizzat" <khairul.rohaizzat.jamaluddin@intel.com>
To: poky@lists.yoctoproject.org
Cc: khairul.rohaizzat.jamaluddin@intel.com
Subject: [PATCH] documentation/ref-manual/ref-variables.xml: Added IMAGE_EFI_BOOT_FILES variable entry
Date: Thu, 17 Sep 2020 22:13:27 +0800
Message-Id: <1600352007-48271-1-git-send-email-khairul.rohaizzat.jamaluddin@intel.com>
X-Mailer: git-send-email 2.7.4

From: Khairul Rohaizzat Jamaluddin <khairul.rohaizzat.jamaluddin@intel.com>

IMAGE_EFI_BOOT_FILES created to help differentiate files needed between
bootimg-efi and bootimg-partition when creating the installer/.wic file.

Signed-off-by: Khairul Rohaizzat Jamaluddin <khairul.rohaizzat.jamaluddin@intel.com>
---
 documentation/ref-manual/ref-variables.xml | 55 ++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index a506480..6e438e8 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -5719,6 +5719,61 @@
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-IMAGE_EFI_BOOT_FILES'><glossterm>IMAGE_EFI_BOOT_FILES</glossterm>
+            <info>
+                IMAGE_EFI_BOOT_FILES[doc] = "A space-separated list of files from ${DEPLOY_DIR_IMAGE} to place in EFI boot partition."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+                    A space-separated list of files installed into the
+                    EFI boot partition when preparing an image using the Wic tool
+                    with the <filename>bootimg-efi</filename> source
+                    plugin.
+                    By default, the files are installed under the same name as
+                    the source files.
+                    To change the installed name, separate it from the
+                    original name with a semi-colon (;).
+                    Source files need to be located in
+                    <link linkend='var-DEPLOY_DIR_IMAGE'><filename>DEPLOY_DIR_IMAGE</filename></link>.
+                    Here are two examples:
+
+                    <literallayout class="monospaced">
+     IMAGE_EFI_BOOT_FILES = ${IMGDEPLOYDIR}/${IMAGE_BASENAME}-${MACHINE}.ext4;rootfs.img
+                    </literallayout>
+                </para>
+
+                <para>
+                    Alternatively, source files can be picked up using
+                    a glob pattern.
+                    In this case, the destination file must have the same name
+                    as the base name of the source file path.
+                    To install files into a directory within the
+                    target location, pass its name after a semi-colon
+                    (;).
+                    Here are two examples:
+                    <literallayout class="monospaced">
+     IMAGE_BOOT_FILES = "boot/loader/*"
+     IMAGE_BOOT_FILES = "boot/loader/*;boot/"
+                    </literallayout>
+                    The first example installs all files from
+                    <filename>${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles</filename>
+                    into the root of the target partition.
+                    The second example installs the same files into a
+                    <filename>boot</filename> directory within the
+                    target partition.
+                </para>
+
+                <para>
+                    You can find information on how to use the Wic tool in the
+                    "<ulink url='&YOCTO_DOCS_DEV_URL;#creating-partitioned-images-using-wic'>Creating Partitioned Images Using Wic</ulink>"
+                    section of the Yocto Project Development Tasks Manual.
+                    Reference material for Wic is located in the
+                    "<ulink url='&YOCTO_DOCS_REF_URL;#ref-kickstart'>OpenEmbedded Kickstart (.wks) Reference</ulink>"
+                    chapter.
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-IMAGE_BOOT_FILES'><glossterm>IMAGE_BOOT_FILES</glossterm>
             <info>
                 IMAGE_BOOT_FILES[doc] = "A space-separated list of files from ${DEPLOY_DIR_IMAGE} to place in boot partition."
-- 
2.7.4

