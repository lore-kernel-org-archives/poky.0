Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 023414C811D2;
	Mon, 17 Jan 2011 15:55:03 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HLt0dG017296;
	Mon, 17 Jan 2011 13:55:02 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 17 Jan 2011 16:57:30 -0500
Message-Id: <65627fe40d662f266c380639d13c481c552d3a76.1295300980.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295300980.git.bruce.ashfield@windriver.com>
References: <cover.1295300980.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295300980.git.bruce.ashfield@windriver.com>
References: <cover.1295300980.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/3] linux-yocto: beagleboard enablement
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
X-List-Received-Date: Mon, 17 Jan 2011 21:55:04 -0000

Enable beagleboard support for 2.6.37. The only non-kernel related
change for the board is to update the serial console designation.

The Beagleboard use omap serial driver, so we replace ttyS2 with ttyO2.
This is described in following link:
http://www.mail-archive.com/linux-omap@vger.kernel.org/msg40838.html

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 meta/conf/machine/beagleboard.conf |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
index cb6417b..bbb0f21 100644
--- a/meta/conf/machine/beagleboard.conf
+++ b/meta/conf/machine/beagleboard.conf
@@ -19,10 +19,10 @@ IMAGE_FSTYPES += "tar.bz2 jffs2"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
 
 # Guesswork
-SERIAL_CONSOLE = "115200 ttyS2"
+SERIAL_CONSOLE = "115200 ttyO2"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.0.4


