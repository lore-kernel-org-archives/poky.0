Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8113C4C811EB
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:42 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV3-00019m-8l
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:37 -0800
Received: by rex (Postfix, from userid 1000)
	id A956D2AB4E; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <6e440f84f9906b633d40fb8fd957c0ce231ff0c1.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:59:53 +0000
To: poky@pokylinux.org
Subject: [PATCH 15/16] native.bbclass: Mark various package functions as noexec since they don't do any work
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:42 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/native.bbclass |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 067b1be..3ca9d62 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -112,3 +112,8 @@ python __anonymous () {
         bb.data.setVar("OVERRIDES", bb.data.getVar("OVERRIDES", d, False) + ":virtclass-native", d)
 }
 
+do_package[noexec] = "1"
+do_package_write_ipk[noexec] = "1"
+do_package_write_deb[noexec] = "1"
+do_package_write_rpm[noexec] = "1"
+
-- 
1.7.0.4


