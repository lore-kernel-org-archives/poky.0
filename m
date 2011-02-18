Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 783254C80A4D
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 10:56:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Feb 2011 08:56:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="604214608"
Received: from unknown (HELO localhost) ([10.255.12.19])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2011 08:56:36 -0800
Message-Id: <495371ffb48b733d62f460ff31769ee73fa51af9.1298047832.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298047832.git.scott.m.rifenbark@intel.com>
References: <cover.1298047832.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Feb 2011 16:07:45 -0600
Date: Fri, 18 Feb 2011 10:57:14 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 3/4] documentation/kernel-manual/kernel-how-to.xml: fix to step 3 and 4 of section 3.4.4
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
X-List-Received-Date: Fri, 18 Feb 2011 16:56:37 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Added text after the sample bbappend file stating that the user needs
to update the KSRC assignment statement and also remove its comment.
Also they have to remove the comment from the SRC_URI line.

Changed the bitbake command in step 4 to use the linux-yocto-stable
file rather than the linux-yocto file.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 6d1da06..2742611 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1111,6 +1111,11 @@ That's it. Configure and build.
      # SRC_URI = "git://${KSRC};nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
                     </literallayout>
                 </para>
+
+                <para>
+                    In the previous sample file you need to update and remove the comment from 
+                    the KSRC assignment and also remove the comment from the SRC_URI line.
+                </para>
                 
                 <para>
                     After doing that, select the machine in <filename>build/conf/local.conf</filename>:
@@ -1177,7 +1182,7 @@ That's it. Configure and build.
                     Then, modify the code there, using quilt to save the changes, and recompile until 
                     it works:
                     <literallayout class='monospaced'>
-     $ bitbake -c compile -f linux-yocto
+     $ bitbake -c compile -f linux-yocto-stable
                     </literallayout>
                 </para></listitem>
                 
-- 
1.7.1


