Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C59C4C80AC5
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:44 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2011 16:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="897638768"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2011 16:42:43 -0700
Message-Id: <18b4eb75696ba4466602cf30d621e47d731b8576.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Mar 2011 17:33:16 -0600
Date: Tue, 15 Mar 2011 17:43:36 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 13/13] documentation/adt-manual/adt-eclipse.xml: Specified qemu options outside of brackets.
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:44 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section 4.1.3.4 discusses custom options for when you want to run
a QEMU image.  Jessica felt that we needed to stress the fact that
the options "serial", "nographic", and "kvm" must all appear outside
of the angled brackets.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-eclipse.xml |   12 ++++++++----
 1 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index 197628b..d41f496 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -215,11 +215,15 @@
                     <para>Most custom options are for advanced QEMU users to further 
                     customize their QEMU instance.  
                     These options are specified between paired angled brackets.  
-                    Some options must be specified outside the brackets.  
-                    Use the <filename>man qemu</filename> command to get help on all the options.  
-                    The following is an example custom:
+                    Some options must be specified outside the brackets.
+                    In particular, the options <filename>serial</filename>, 
+                    <filename>nographic</filename>, and <filename>kvm</filename> must all 
+                    be outside the brackets.  
+                    Use the <filename>man qemu</filename> command to get help on all the options
+                    and their use.  
+                    The following is an example:
                         <literallayout class='monospaced'>
-    serial ‘&lt;-m 256 –full-screen&gt;’
+    serial ‘&lt;-m 256 -full-screen&gt;’
                         </literallayout>
                     </para>
                     <para>
-- 
1.7.1


