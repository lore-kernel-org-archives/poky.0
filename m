Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA252E00C65; Tue, 17 Jun 2014 09:13:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB77BE00C4C
	for <poky@yoctoproject.org>; Tue, 17 Jun 2014 09:13:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5HGDVun000442
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jun 2014 09:13:31 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Tue, 17 Jun 2014 09:13:31 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 17 Jun 2014 12:13:20 -0400
Message-ID: <69a08c34c2a008154cf743bd116f21a10dfc2838.1403021468.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1403021468.git.bruce.ashfield@windriver.com>
References: <cover.1403021468.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 3/4] mpc8315e-rdb: add the example about booting from jffs2 root
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
X-List-Received-Date: Tue, 17 Jun 2014 16:13:46 -0000
Content-Type: text/plain

From: Kevin Hao <kexin.hao@windriver.com>

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
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
1.8.1.2


