Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F4614C80BCF
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 15:01:23 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L1KMW027851;
	Mon, 8 Nov 2010 13:01:21 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:01:28 -0500
Message-Id: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
References: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/4] Added qemumips /etc/pointercal file for touchscreen calibration
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
X-List-Received-Date: Mon, 08 Nov 2010 21:01:23 -0000

From: J. Aaron Gamble <john.gamble@windriver.com>

Fixes [BUGID #394]

Signed-off-by: J. Aaron Gamble <john.gamble@windriver.com>
---
 .../pointercal/files/qemumips/pointercal           |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-bsp/pointercal/files/qemumips/pointercal

diff --git a/meta/recipes-bsp/pointercal/files/qemumips/pointercal b/meta/recipes-bsp/pointercal/files/qemumips/pointercal
new file mode 100644
index 0000000..abd84ca
--- /dev/null
+++ b/meta/recipes-bsp/pointercal/files/qemumips/pointercal
@@ -0,0 +1 @@
+8313 4 -8526 7 8334 -82604 65536
-- 
1.7.0.4


