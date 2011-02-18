Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1C5C4C800AF
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 10:56:38 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Feb 2011 08:56:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="888960119"
Received: from unknown (HELO localhost) ([10.255.12.19])
	by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2011 08:56:38 -0800
Message-Id: <fb2c97c8d0108f3813d982405248c6309ba275c6.1298047832.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298047832.git.scott.m.rifenbark@intel.com>
References: <cover.1298047832.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Feb 2011 08:07:06 -0600
Date: Fri, 18 Feb 2011 10:57:16 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 4/4] documentation/kernel-manual/kernel-how-to.xml: Changes to section 3.4.4 and new 3.4.5
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
X-List-Received-Date: Fri, 18 Feb 2011 16:56:38 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I made some updates to the 3.4.4 section according to Bruce Ashfield's
feedback.  I also added a new section 3.4.5 (Creating a BSP Based on an
Existing Similar BSP Without a Local Kernel Repository).

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |   31 +++++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 2742611..abb19f2 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1198,6 +1198,37 @@ That's it. Configure and build.
             </para>
         </section>
 
+        <section id='bsp-creating-bsp-without-a-local-kernel-repo'>
+        <title>Creating a BSP Based on an Existing Similar BSP Without a Local Kernel Repository</title>
+
+            <para>
+                If you are creating a BSP based on an existing similar BSP but you do not have
+                a local kernel repository, the process is very similar to the process in 
+                the previous section (<xref linkend='bsp-creating'/>). 
+            </para>
+
+            <para>
+                Follow the exact same process as described in the previous section with 
+                these slight modifications:
+            </para>
+            <orderedlist>
+                <listitem><para>Perform Step 1 as is from the previous section.</para></listitem>
+                <listitem><para>Perform Step 2 as is from the previous section.</para></listitem>
+                <listitem><para>Perform Step 3 but do not modify the 
+                    KSRC line in the bbappend file.</para></listitem>
+                <listitem><para>Edit the <filename>local.conf</filename> so 
+                    that it contains the following:
+                    <literallayout class='monospaced'>
+     YOCTO_KERNEL_EXTERNAL_BRANCH="&lt;your-machine&gt;-standard
+                    </literallayout></para>
+                    <para>Adding this statement to the file triggers BSP bootstrapping
+                    to occur and the correct branches and base configuration to be used.
+                </para></listitem>
+                <listitem><para>Perform Step 4 as is from the previous section.</para></listitem>
+                <listitem><para>Perform Step 5 as is from the previous section.</para></listitem>
+            </orderedlist>
+        </section>
+
 
 <!--        <section id='bsp-creating-a-new-bsp'>
             <title>BSP: Creating a New BSP</title>
-- 
1.7.1


