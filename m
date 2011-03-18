Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 497854C80ACB
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:40 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 09:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="721663688"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 09:59:01 -0700
Message-Id: <bbc1495c7ff7d0e3664d48f3ce7870068a8b5035.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 17:24:43 -0600
Date: Fri, 18 Mar 2011 10:59:54 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 11/15] documentation/poky-ref-manual/faq.xml: Added three FAQ entries
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:40 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Added three FAQ entries per Joshual Lock.

1. How do I disable the cursor on my touchscreen device?
2. How do I make sure connected network interfaces are brought
   up by default.
3. How do I create images with more free space?

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/faq.xml |   68 +++++++++++++++++++++++++++++++++
 1 files changed, 68 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 96e32d5..366db6c 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -348,6 +348,74 @@
             </para>
         </answer>
     </qandaentry>
+
+    <qandaentry>
+        <question>
+            <para>
+                How do I disable the cursor on my touchscreen device?
+            </para>
+        </question>
+        <answer>
+            <para>
+                You need to create a form factor file as described in 
+                <xref linkend='bsp-filelayout-misc-recipes'>"Miscellaneous Recipe Files"</xref>
+                and set the <filename>HAVE_TOUCHSCREEN</filename> variable equal to one.
+                <literallayout class='monospaced'>
+     HAVE_TOUCHSCREEN=1
+                </literallayout>
+            </para>
+        </answer>
+    </qandaentry>
+
+    <qandaentry>
+        <question>
+            <para>
+                How do I make sure connected network interfaces are brought up by default?
+            </para>
+        </question>
+        <answer>
+            <para>
+                The default interfaces file provided by the netbase recipe does not 
+                automatically bring up network interfaces. 
+                Therefore you will need to add a BSP-specific netbase that includes an interfaces 
+                file.
+                See <xref linkend='bsp-filelayout-misc-recipes'>"Miscellaneous Recipe Files"</xref>
+                for information on creating these types of miscellaneous recipe files.
+            </para>
+            <para>
+                For example, add the following files to your layer:
+                <literallayout class='monospaced'>
+     meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces
+     meta-MACHINE/recipes-bsp/netbase/netbase_4.44.bbappend
+                </literallayout>
+            </para>
+        </answer>
+    </qandaentry>
+
+    <qandaentry>
+        <question>
+            <para>
+                How do I create images with more free space?
+            </para>
+        </question>
+        <answer>
+            <para>
+                Images are created to be 1.2 times the size of the populated root filesystem. 
+                To modify this ratio so that there is more free space available you need to 
+                set the configuration value <filename>IMAGE_OVERHEAD_FACTOR</filename>.  
+                For example, setting <filename>IMAGE_OVERHEAD_FACTOR</filename> to 1.5 sets 
+                the image size ratio to one and a half times the size of the populated 
+                root filesystem.
+                <literallayout class='monospaced'>
+     IMAGE_OVERHEAD_FACTOR = "1.5"
+                </literallayout>
+            </para>
+        </answer>
+    </qandaentry>
+
+
+
+
 </qandaset>
 </appendix>
 <!-- 
-- 
1.7.1


