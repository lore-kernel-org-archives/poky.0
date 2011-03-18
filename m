Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E498B4C80578
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:58:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Mar 2011 09:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404782142"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 09:58:46 -0700
Message-Id: <31dcbb19fde437effdc0cfc55119735077544b6b.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 16 Mar 2011 22:50:06 -0600
Date: Fri, 18 Mar 2011 10:59:38 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 01/15] [BUGID# 873] - documentation/poky-ref-manual: Notes added for non-GPLv3 builds
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
X-List-Received-Date: Fri, 18 Mar 2011 16:58:48 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 873] - Added a note in the Images Appendix indicating that
building an image without GPLv3 components is only supported for
base and minimal images.  Also put the two changes you have to do
to the local.conf file for the build.

Added a note in the second chapter in the section on building images.
The note indicates the same as in the appendix but does not go into the
local.conf file detail.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-images.xml |   12 ++++++++++++
 documentation/poky-ref-manual/usingpoky.xml  |    7 ++++++-
 2 files changed, 18 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index 9477883..03cc624 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -13,6 +13,18 @@
         Images are listed below along with details of what they contain:
     </para>
 
+    <note>
+        Building an image without GNU Public License Version 3 (GPLv3) components is 
+        only supported for minimal and base images.
+        Furthermore, if you are going to build an image using non-GPLv3 components,
+        you must make the following changes in the <filename>local.conf</filename> file
+        before using the BitBake command to build the minimal or base image:
+        <literallayout class='monospaced'>
+     1. Comment out the IMAGE_EXTRA_FEATURES line
+     2. Set INCOMPATIBLE_LICENSE = "GPLv3"
+        </literallayout>
+    </note>
+
     <itemizedlist>
             <listitem>
                 <para>
diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index 79e9dfb..aecefd3 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -151,13 +151,18 @@
     </para>
     <para>
         The target is the name of the recipe you want to build. 
-        Common targets are the images in <filename>meta/recipes-core/images</filename>),
+        Common targets are the images in <filename>meta/recipes-core/images</filename>,
         <filename>/meta/recipes-sato/images</filename>, etc.
         Or, the target can be the name of a recipe for a specific piece of software such as 
         <application>busybox</application>. 
         For more details about the standard images available, see the 
         <link linkend="ref-images">'Reference: Images'</link> appendix.
     </para>
+    <note>
+        Building an image without GNU Public License Version 3 (GPLv3) components is 
+        only supported for minimal and base images.
+        See <link linkend='ref-images'>'Reference: Images'</link> for more information.
+    </note>
 </section>
 
 <section id='usingpoky-install'>
-- 
1.7.1


