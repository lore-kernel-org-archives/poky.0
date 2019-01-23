Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543C9E00D0E; Wed, 23 Jan 2019 00:10:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A94A7E00CED
	for <poky@yoctoproject.org>; Wed, 23 Jan 2019 00:10:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0N8AbtI016289
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 23 Jan 2019 00:10:38 -0800 (PST)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 23 Jan 2019 00:10:37 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 23 Jan 2019 16:05:44 +0800
Message-ID: <20190123080544.39726-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20190123080544.39726-1-kexin.hao@windriver.com>
References: <20190123080544.39726-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] meta-yocto-bsp: Bump to the latest stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Wed, 23 Jan 2019 08:10:39 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.18.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend           | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index ea414f91928d..7f15843f3a90 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -10,9 +10,9 @@ KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "db2d813869a0501782469ecdb17e277a501c9f57"
 SRCREV_machine_genericx86-64 ?= "db2d813869a0501782469ecdb17e277a501c9f57"
-SRCREV_machine_edgerouter ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
-SRCREV_machine_beaglebone-yocto ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
-SRCREV_machine_mpc8315e-rdb ?= "20be2231bb047b02248d7f965c1c3af0c6be3a5e"
+SRCREV_machine_edgerouter ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
+SRCREV_machine_beaglebone-yocto ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
+SRCREV_machine_mpc8315e-rdb ?= "99071a599d8650b069fb8135866fca203f375350"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.18.22"
 LINUX_VERSION_genericx86-64 = "4.18.22"
-LINUX_VERSION_edgerouter = "4.18.9"
-LINUX_VERSION_beaglebone-yocto = "4.18.9"
-LINUX_VERSION_mpc8315e-rdb = "4.18.9"
+LINUX_VERSION_edgerouter = "4.18.25"
+LINUX_VERSION_beaglebone-yocto = "4.18.25"
+LINUX_VERSION_mpc8315e-rdb = "4.18.25"
-- 
2.14.4


