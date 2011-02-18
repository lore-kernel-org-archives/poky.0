Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A2A744C80A1D
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 10:56:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Feb 2011 08:56:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="659183381"
Received: from unknown (HELO localhost) ([10.255.12.19])
	by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2011 08:56:35 -0800
Message-Id: <8b7be1e2100723783c0792484aa003e8218d54c6.1298047832.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298047832.git.scott.m.rifenbark@intel.com>
References: <cover.1298047832.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Feb 2011 15:54:25 -0600
Date: Fri, 18 Feb 2011 10:57:13 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/4] documentation/kernel-manual/kernel-how-to.xml: Fix to step 3 of section 3.4.4
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
X-List-Received-Date: Fri, 18 Feb 2011 16:56:35 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Changed 'linux-yocto_git.bbappend' to 'linux-yocto-stable_git.bbappend'
in step 3 just before the code example.  This makes the code consistent
with the rest of the example supporting the 2.6.34 kernel.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index efe81e5..6d1da06 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1089,7 +1089,7 @@ That's it. Configure and build.
                 </para></listitem>
                 
                 <listitem><para>
-                    In a layer, create a <filename>linux-yocto_git.bbappend</filename> 
+                    In a layer, create a <filename>linux-yocto-stable_git.bbappend</filename> 
                     file with the following:
                 </para>       
                 
-- 
1.7.1


