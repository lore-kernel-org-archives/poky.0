Return-Path: <pn@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7489E00DD9; Tue, 20 Feb 2018 07:49:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB83CE00D6D
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 07:49:45 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zm4n42jyBz1r0KF;
	Tue, 20 Feb 2018 16:49:44 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zm4n42Yd0z1qrVp;
	Tue, 20 Feb 2018 16:49:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id WbyO1qRNADDY; Tue, 20 Feb 2018 16:49:43 +0100 (CET)
X-Auth-Info: 09fgBC133+2QhsEqJtqICT1kJsHPD2gzosoGCjCcyJY=
Received: from xpert.denx.de (unknown [62.91.23.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Tue, 20 Feb 2018 16:49:43 +0100 (CET)
From: Parthiban Nallathambi <pn@denx.de>
To: poky@yoctoproject.org
Date: Tue, 20 Feb 2018 16:49:27 +0100
Message-Id: <20180220154927.15618-1-pn@denx.de>
X-Mailer: git-send-email 2.14.3
Cc: lusus@denx.de
Subject: [PATCH] [wic]: Adding post operation hook for SourcePlugin
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
X-List-Received-Date: Tue, 20 Feb 2018 15:49:46 -0000

do_post_partition hook is needed if some operations like security signing
the parition needs to be done. source plugins can make use of this to implement
post operatiosn in do_post_partition. do_post_partition is called after
do_prepare_partition if present.

Signed-off-by: Parthiban Nallathambi <pn@denx.de>
---
 scripts/lib/wic/help.py       |  4 ++++
 scripts/lib/wic/partition.py  |  3 +++
 scripts/lib/wic/pluginbase.py | 10 ++++++++++
 3 files changed, 17 insertions(+)

diff --git a/scripts/lib/wic/help.py b/scripts/lib/wic/help.py
index bf658b94e3..842b868a57 100644
--- a/scripts/lib/wic/help.py
+++ b/scripts/lib/wic/help.py
@@ -576,6 +576,10 @@ DESCRIPTION
           partition. In other words, it 'prepares' the final partition
           image which will be incorporated into the disk image.
 
+      do_post_partition()
+          Called after the partition is created. It is useful to add post
+          operations e.g. signing the partition.
+
       do_configure_partition()
           Called before do_prepare_partition(), typically used to
           create custom configuration files for a partition, for
diff --git a/scripts/lib/wic/partition.py b/scripts/lib/wic/partition.py
index 72f2e2708f..d4558621a9 100644
--- a/scripts/lib/wic/partition.py
+++ b/scripts/lib/wic/partition.py
@@ -185,6 +185,9 @@ class Partition():
         plugin.do_prepare_partition(self, srcparams_dict, creator,
                                     cr_workdir, oe_builddir, bootimg_dir,
                                     kernel_dir, rootfs_dir, native_sysroot)
+        plugin.do_post_partition(self, srcparams_dict, creator,
+                                    cr_workdir, oe_builddir, bootimg_dir,
+                                    kernel_dir, rootfs_dir, native_sysroot)
 
         # further processing required Partition.size to be an integer, make
         # sure that it is one
diff --git a/scripts/lib/wic/pluginbase.py b/scripts/lib/wic/pluginbase.py
index c009820adc..686d2fee3b 100644
--- a/scripts/lib/wic/pluginbase.py
+++ b/scripts/lib/wic/pluginbase.py
@@ -137,3 +137,13 @@ class SourcePlugin(metaclass=PluginMeta):
         'prepares' the partition to be incorporated into the image.
         """
         logger.debug("SourcePlugin: do_prepare_partition: part: %s", part)
+
+    @classmethod
+    def do_post_partition(cls, part, source_params, creator, cr_workdir,
+                             oe_builddir, bootimg_dir, kernel_dir, rootfs_dir,
+                             native_sysroot):
+        """
+        Called after the partition is created. It is useful to add post
+        operations e.g. security signing the partition.
+        """
+        logger.debug("SourcePlugin: do_post_partition: part: %s", part)
-- 
2.14.3


