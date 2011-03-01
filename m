Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AB774C80AB7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:08:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 06:07:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="395690611"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 06:07:58 -0800
Message-Id: <44dec28ebee2e5495ef9ba775a76b128088529a4.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 16:52:58 -0600
Date: Tue, 01 Mar 2011  8:08:50 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 10/12] documentation/poky-ref-manual/resources.xml: Text addtions in Links section in Appendix I
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
X-List-Received-Date: Tue, 01 Mar 2011 14:08:00 -0000

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


