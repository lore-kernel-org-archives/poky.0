Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C40EDE007AC; Tue, 22 Jul 2014 03:31:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FCBDE007A2
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:31:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6MAVPGB012416
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:31:26 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 22 Jul 2014 03:31:25 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 22 Jul 2014 03:31:24 -0700
Message-ID: <7305f0f971b95479b997140f2d848671109753b2.1406024955.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1406024955.git.liezhi.yang@windriver.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] local.conf.sample.extended: add KERNEL_IMAGE_MAXSIZE and IMAGE_ROOTFS_MAXSIZE
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
X-List-Received-Date: Tue, 22 Jul 2014 10:31:48 -0000
Content-Type: text/plain

[YOCTO #2610]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index b156319..4bd33a2 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -331,3 +331,11 @@
 # feed layout is used where package files are placed in <outdir>/<arch>/.
 #
 #IPK_HIERARCHICAL_FEED = "1"
+
+# Checks the kernel image size against KERNEL_IMAGE_MAXSIZE (The unit is
+# Kbytes)
+#KERNEL_IMAGE_MAXSIZE = "8192"
+#
+# Check the rootfs size against IMAGE_ROOTFS_MAXSIZE (The unit is
+# Kbytes)
+#IMAGE_ROOTFS_MAXSIZE = "65536"
-- 
1.7.9.5


