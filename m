Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 788604C80AB0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:54:43 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 05:54:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="898650586"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 05:54:43 -0700
Message-Id: <899628c8b8b2d31b824ad5a9014521fc899a180e.1300452791.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300452791.git.scott.m.rifenbark@intel.com>
References: <cover.1300452791.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 13:35:27 -0600
Date: Fri, 18 Mar 2011  6:55:35 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 4/4] documentation/bsp-guide/bsp.xml: Spell check
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
X-List-Received-Date: Fri, 18 Mar 2011 12:54:43 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Performed a spell check and caught a couple small things.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index ba6ad74..36715f3 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -160,7 +160,7 @@ meta-&lt;bsp_name&gt;/binary/&lt;bootable_images&gt;
             </programlisting>
 
             <para>
-                This optional area contains useful pre-built kernels and userspace filesystem 
+                This optional area contains useful pre-built kernels and user-space filesystem 
                 images appropriate to the target system.
                 This directory contains the Application Development Toolkit (ADT) and minimal
                 live images when the BSP is has been "tar-balled" and placed on the Yocto Project website. 
@@ -391,7 +391,8 @@ SRC_URI += "file://defconfig \
                 </programlisting>
             </para>
             <para>
-                The FILESEXTRAPATHS variable is boilerplated here in order to make it easy to do that.
+                The FILESEXTRAPATHS variable is in boilerplate form here in order to make it easy 
+                to do that.
                 It basically allows those configuration files to be found by the build process.
             </para>
             <note><para>
@@ -539,7 +540,7 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
               will make available a 'de-featured' BSP completely free of the encumbered IP.
               In that case you can use the substitution directly and without any further licensing
               requirements.  
-              If present, this fully 'de-featured' BSP will be named appropiately different 
+              If present, this fully 'de-featured' BSP will be named appropriately different 
               than the normal encumbered BSP.
               If available, this substitution is the simplest and most preferred option.
               This, of course, assumes the resulting functionality meets requirements.
@@ -562,7 +563,7 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
 		<para>
 		  Get a license key (or keys) for the encumbered BSP by visiting 
-                  a website and providing the name of the BSB and your email address
+                  a website and providing the name of the BSP and your email address
                   through a web form.
                 </para>
  
-- 
1.7.1


