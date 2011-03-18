Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39B934C80FD4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:00:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898726369"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 09:58:57 -0700
Message-Id: <d538c895022ec9cffa5bba344837a85bf933c259.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 16:34:37 -0600
Date: Fri, 18 Mar 2011 10:59:50 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 08/15] documentation/poky-ref-manual/introduction.xml: Wording and release update
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
X-List-Received-Date: Fri, 18 Mar 2011 17:00:15 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I changed several occurances of "Yocto Project" to "the Yocto Project."
Also changed the statement about what Poky release the book supported.
It previously said "applies to Poky Release 4.0 (Laverne)."  I changed
this to "applies to Poky Release 5.0 (Bernard)."

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/introduction.xml |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index 1701713..90eaf01 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -8,8 +8,8 @@
     <title>Welcome to Poky!</title>
 
     <para>
-        Poky is the build tool in Yocto Project.
-        Yocto Project uses Poky to build images (kernel, system, and application software) for 
+        Poky is the build tool in the Yocto Project.
+        The Yocto Project uses Poky to build images (kernel, system, and application software) for 
         targeted hardware.
     </para>
 
@@ -78,7 +78,8 @@
     <para>
         The sections in this reference manual describe different aspects of Poky. 
         The <link linkend='usingpoky'>'Using Poky'</link> section provides an overview of the components 
-        that make up Poky followed by information about using Poky and debugging images created in Yocto Project. 
+        that make up Poky followed by information about using Poky and debugging images created in 
+        the Yocto Project. 
         The <link linkend='extendpoky'>'Extending Poky'</link> and 
         <link linkend='bsp'>'Board Support Packages'</link> sections provide information 
         about how to extend and customize Poky along with advice on how to manage these changes. 
@@ -90,7 +91,7 @@
     </para>
 
     <para>
-        This manual applies to Poky Release 4.0 (laverne).
+        This manual applies to Poky Release 5.0 (Bernard).
     </para>
 </section>
 
-- 
1.7.1


