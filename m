Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5EC3A4C811FB
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019v-Gd
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:35 -0800
Received: by rex (Postfix, from userid 1000)
	id 50BEE2AA5B; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <c0202071428fde6ef0a93de9c99d416624628813.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:00:42 +0000
To: poky@pokylinux.org
Subject: [PATCH 09/16] utility-tasks: Switch listtasks to use bb.plain() for printing output
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:43 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/utility-tasks.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/utility-tasks.bbclass b/meta/classes/utility-tasks.bbclass
index 3ab37fa..db22973 100644
--- a/meta/classes/utility-tasks.bbclass
+++ b/meta/classes/utility-tasks.bbclass
@@ -7,7 +7,7 @@ python do_listtasks() {
 	# emit the metadata which isnt valid shell
 	for e in d.keys():
 		if bb.data.getVarFlag(e, 'task', d):
-			sys.__stdout__.write("%s\n" % e)
+			bb.plain("%s" % e)
 }
 
 CLEANFUNCS ?= ""
-- 
1.7.0.4


