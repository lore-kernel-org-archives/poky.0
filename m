Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A39E00C4C; Tue, 17 Jun 2014 09:13:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA13EE00C44
	for <poky@yoctoproject.org>; Tue, 17 Jun 2014 09:13:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5HGDUEr000439
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jun 2014 09:13:30 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Tue, 17 Jun 2014 09:13:30 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 17 Jun 2014 12:13:18 -0400
Message-ID: <1b9bb6e224d7b9d568d9d03a8df1359d18c7a90b.1403021468.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1403021468.git.bruce.ashfield@windriver.com>
References: <cover.1403021468.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/4] mpc8315e-rdb: bump to linux-yocto 3.14
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
X-List-Received-Date: Tue, 17 Jun 2014 16:13:47 -0000
Content-Type: text/plain

From: Kevin Hao <kexin.hao@windriver.com>

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                 | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index ab1eaa910143..ef76f2a755c0 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "3.10%"
+PREFERRED_VERSION_linux-yocto ?= "3.14%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
index e0964eb40a47..f218bb15276d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -2,6 +2,7 @@ KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_genericx86-64  = "standard/common-pc-64/base"
 KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -10,8 +11,10 @@ SRCREV_machine_genericx86 ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
 SRCREV_machine_genericx86-64 ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
 SRCREV_machine_edgerouter ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
 SRCREV_machine_beaglebone ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+SRCREV_machine_mpc8315e-rdb ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
1.8.1.2


