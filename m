Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 886324C8007E;
	Tue,  1 Feb 2011 11:22:06 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11HM3Ak018181;
	Tue, 1 Feb 2011 09:22:04 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue,  1 Feb 2011 12:25:05 -0500
Message-Id: <c2a09e99f0ad8c8267b59f26a8c59885d9f07ce7.1296580694.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1296580694.git.bruce.ashfield@windriver.com>
References: <cover.1296580694.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1296580694.git.bruce.ashfield@windriver.com>
References: <cover.1296580694.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] mpc8315e-rdb: set UBOOT_ENTRYPOINT
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Feb 2011 17:22:06 -0000

Fixes [BUGID #685]

Although not used if the in kernel uImage is booted, it is
a good idea to set the UBOOT_ENTRYPOINT just as the other
uImage based boards do.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/mpc8315e-rdb.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/conf/machine/mpc8315e-rdb.conf b/meta/conf/machine/mpc8315e-rdb.conf
index e3f9d23..ac518fb 100644
--- a/meta/conf/machine/mpc8315e-rdb.conf
+++ b/meta/conf/machine/mpc8315e-rdb.conf
@@ -14,3 +14,6 @@ MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+
+UBOOT_ENTRYPOINT = "0x00000000"
+
-- 
1.7.3.4


