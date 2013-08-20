Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49EF5E01528
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2013 01:40:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="284227811"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Aug 2013 01:40:32 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id DCC566A4007;
	Tue, 20 Aug 2013 01:40:29 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:05 +0200
Message-Id: <b26af3c0a6ea3a3291d043051f6f0fbbc38a6dc8.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 023/186] yocto-project-qs: Update to Linux Distribution Requirements
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:33 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Fixes [YOCTO #4753]

The section that tells the user the basic Linux requirement has
been updated to mention the Git, tar, and Python minimum
requirements.  There is a new section in the reference manual's
introduction area that describes how to create the buildtools
tarball if these requirements are not met.  The changes I made
in the Quick Start now summarize the requirements and provide
a link to that new section in the YP Reference Manual.

(From yocto-docs rev: fcc61acab7e4a7ddde194aa2db21181778d5dcdf)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   31 +++++++++++++++-----
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 352f89e..0d42993 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -196,10 +196,27 @@
             </note>
             </para>
         <para>
-            The OpenEmbedded build system should be able to run on any modern distribution with Python 2.6 or 2.7.
-            Earlier releases of Python are known to not work and the system does not support Python 3 at this time.
-            This document assumes you are running one of the previously noted distributions on your Linux-based
-            host systems.
+            The OpenEmbedded build system should be able to run on any modern
+            distribution that has the following versions for Git, tar, and
+            Python.
+            <itemizedlist>
+                <listitem><para>Git 1.7.5 or greater</para></listitem>
+                <listitem><para>tar 1.24 or greater</para></listitem>
+                <listitem><para>Python 2.7.3 or greater</para></listitem>
+            </itemizedlist>
+            Earlier releases of Python are known to not work and the system
+            does not support Python 3 at this time.
+            If your system does not meet any of these three listed
+            version requirements, you can
+            take steps to prepare the system so that you can still use the build
+            system.
+            See the
+            "<ulink url='&YOCTO_DOCS_REF_URL;#required-git-tar-and-python-versions'>Required Git, tar, and Python Versions</ulink>"
+            section in the Yocto Project Reference Manual for information.
+        </para>
+        <para>
+            This document assumes you are running one of the previously noted
+            distributions on your Linux-based host systems.
         </para>
         <note><para>
             If you attempt to use a distribution not in the above list, you may or may not have success - you
@@ -308,9 +325,9 @@
         <para>
             You can download the latest Yocto Project release by going to the
             <ulink url="&YOCTO_HOME_URL;">Yocto Project website</ulink>
-            clicking "Downloads" in the navigation pane to the left to view all 
+            clicking "Downloads" in the navigation pane to the left to view all
             available Yocto Project releases.
-            Be sure to scroll down and look for "Yocto Project" under the 
+            Be sure to scroll down and look for "Yocto Project" under the
             "Type" heading in the list.
             Nightly and developmental builds are also maintained at
             <ulink url="&YOCTO_AB_NIGHTLY_URL;"></ulink>.
@@ -663,7 +680,7 @@
                 x86, x86-64, ppc, mips, or arm.
                 </literallayout>
                 <note>
-                    For the <filename>qemu</filename> architecture, 
+                    For the <filename>qemu</filename> architecture,
                     <filename>ext3</filename> and <filename>tar</filename>
                     files start with the "lib32" string.
                 </note>
-- 
1.7.9.5


