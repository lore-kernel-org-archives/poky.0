Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A8064C800BA;
	Wed,  9 Feb 2011 00:23:57 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p196NqsT015198;
	Tue, 8 Feb 2011 22:23:55 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  9 Feb 2011 01:27:10 -0500
Message-Id: <84c24933f8b7fee3b008d1ab53e863c067b1ecd6.1297232632.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/3] mpc8315-rdb: add dtb generation configuration
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
X-List-Received-Date: Wed, 09 Feb 2011 06:23:57 -0000

Fixes [BUGID #610]

dtb files were not being built for the mpc8315e-rdb, since they
weren't being configured into the machine. With this and the
related dtc fixes, we now get a dtb in the deployment directories.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/mpc8315e-rdb.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/conf/machine/mpc8315e-rdb.conf b/meta/conf/machine/mpc8315e-rdb.conf
index ac518fb..578751c 100644
--- a/meta/conf/machine/mpc8315e-rdb.conf
+++ b/meta/conf/machine/mpc8315e-rdb.conf
@@ -17,3 +17,4 @@ PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 UBOOT_ENTRYPOINT = "0x00000000"
 
+KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/mpc8315erdb.dts"
-- 
1.7.0.4


