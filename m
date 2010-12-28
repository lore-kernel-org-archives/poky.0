Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D87884C81069;
	Tue, 28 Dec 2010 00:49:12 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBS6lMMU010673;
	Mon, 27 Dec 2010 22:47:23 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 28 Dec 2010 01:49:13 -0500
Message-Id: <71a55c0b1221170e5a9b72933e5b0db894afa946.1293518497.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1293518497.git.bruce.ashfield@windriver.com>
References: <cover.1293518497.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1293518497.git.bruce.ashfield@windriver.com>
References: <cover.1293518497.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] yocto-kernel: fix kmachine to deal with overrides
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
X-List-Received-Date: Tue, 28 Dec 2010 06:49:13 -0000

BSPs are built from a particular branch of the kernel repository
which is specfied via the mapping of MACHINE to KMACHINE. Unless
a global branch is being forced (like libc headers), KMACHINE
is an override on a per machine basis.

Because KMACHINE is typically override we must first try the
most specific variant KMACHINE_<machine> and if that is undefined
look for a fallack default. This allows any combination of
variables to work (and at the time the anonymous python
executes) safely and get us a properly defined branch for the
fetcher and build.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index f541878..7ebe5d6 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -29,10 +29,13 @@ python __anonymous () {
         # The branch for a build is:
         #    yocto/<kernel type>/${KMACHINE} or
         #    yocto/<kernel type>/${KMACHINE}/base
-        bb.data.setVar("KBRANCH", bb.data.expand("${KMACHINE}",d), d)
+        mach = bb.data.getVar("KMACHINE_" + bb.data.expand("${MACHINE}",d), d, 1)
+        if mach == None:
+             mach = bb.data.getVar("KMACHINE", d, 1)
+
+        bb.data.setVar("KBRANCH", mach, d)
         bb.data.setVar("KMETA", "meta", d)
 
-        mach = bb.data.getVar("KMACHINE", d, 1)
         # drop the "/base" if it was on the KMACHINE
         kmachine = mach.replace('/base','')
         # drop everything but the last segment
-- 
1.7.0.4


