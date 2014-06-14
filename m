Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C49FE00BFE; Fri, 13 Jun 2014 18:48:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1621CE00BEA
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 18:48:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5E1lxiS000887
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 Jun 2014 18:47:59 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Fri, 13 Jun 2014 18:47:58 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 14 Jun 2014 09:47:24 +0800
Message-ID: <1402710444-2334-4-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1402710444-2334-1-git-send-email-kexin.hao@windriver.com>
References: <1402710444-2334-1-git-send-email-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH v2 3/3] mpc8315e-rdb: add the example about booting from jffs2 root
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
X-List-Received-Date: Sat, 14 Jun 2014 01:48:03 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
v2: A new patch introduced in v2.

 README.hardware | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/README.hardware b/README.hardware
index f11fdd7794ae..d8faaa3bdb9d 100644
--- a/README.hardware
+++ b/README.hardware
@@ -324,6 +324,22 @@ Load the kernel and dtb (device tree blob), and boot the system as follows:
  => tftp 2000000 uImage-mpc8315e-rdb.dtb
  => bootm 1000000 - 2000000
 
+--- Booting from JFFS2 root ---
+
+ 1. First boot the board with NFS root.
+
+ 2. Erase the MTD partition which will be used as root:
+
+    $ flash_eraseall  /dev/mtd3
+
+ 3. Copy the JFFS2 image to the MTD partition:
+
+    $ flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3
+
+ 4. Then reboot the board and set up the environment in U-Boot:
+
+    => setenv bootargs root=/dev/mtdblock3 rootfstype=jffs2 console=ttyS0,115200
+
 
 Ubiquiti Networks EdgeRouter Lite (edgerouter)
 ==============================================
-- 
1.9.3


