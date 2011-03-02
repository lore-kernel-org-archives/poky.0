Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DAF94C80AB9
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 10:00:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="608305446"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 10:00:30 -0800
Message-Id: <a820c07796dc478154b7e5ee4e590a425b981e8a.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 16:52:58 -0600
Date: Wed, 02 Mar 2011 10:00:29 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 15/26] documentation/poky-ref-manual/resources.xml: Text addtions in Links section in Appendix I
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:31 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I added text after the bulleted items "The Poky website" and "BitBake Uer Manual."
These were blank and it was not consistent with the rest of the list.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/resources.xml |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index e6f7b26..888610c 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -75,7 +75,8 @@
             for Yocto Project.
         </para></listitem>
         <listitem><para>
-            <ulink url='http://pokylinux.org'>The Poky website</ulink> 
+            <ulink url='http://pokylinux.org'>The Poky website</ulink> - The home site
+            for Poky Linux.
         </para></listitem>
         <listitem><para>
             <ulink url='http://www.openedhand.com/'>OpenedHand</ulink> - The
@@ -96,8 +97,8 @@
             - The tool used to process Poky metadata.
         </para></listitem>
         <listitem><para>
-            <ulink url='http://bitbake.berlios.de/manual/'>Bitbake User
-                Manual</ulink>
+            <ulink url='http://bitbake.berlios.de/manual/'>BitBake User
+                Manual</ulink> - A comprehensive guide to the BitBake tool.
         </para></listitem>
         <listitem><para>
             <ulink url='http://pimlico-project.org/'>Pimlico</ulink> - A
-- 
1.7.1


