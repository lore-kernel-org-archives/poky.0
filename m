Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E34E0157B
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:41:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="365375057"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 01:40:49 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id C646D6A4007;
	Tue, 20 Aug 2013 01:40:46 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:15 +0200
Message-Id: <25146ba5dc249f3f5f19829eaee736a101615880.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 033/186] ref-manual: Some additional edits
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
X-List-Received-Date: Tue, 20 Aug 2013 08:41:00 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Made a pass through this before sending it out for review.

(From yocto-docs rev: 702f65bb497b157dfd2635f9b13ffd679dda9d0a)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/ref-manual/technical-details.xml |   35 +++++++++++++-----------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 583d204..79d1654 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -163,7 +163,7 @@
         "<ulink url='&YOCTO_DOCS_QS_URL;#yp-intro'>Introducing the Yocto Project Development Environment</ulink>"
         section of the Yocto Project Quick Start.
         This expanded discussion presents a deeper level of detail regarding
-        sources of input, generated output, and controlling
+        input, output, and
         <ulink url='&YOCTO_DOCS_DEV_URL;#metadata'>Metadata</ulink>.
     </para>
 
@@ -179,16 +179,16 @@
     </para>
 
     <para>
-        This paragraph will introduce the main blocks of the preceding figure
-        to overview and organize the remainder of the section:
+        The generalized Yocto Project Devevelopment Environment consists of
+        severl functional areas:
         <itemizedlist>
             <listitem><para><emphasis>User Configuration:</emphasis>
-                Methods by with the user can directly control the build
-                process.</para></listitem>
+                Metadata you can use to control the build process.
+                </para></listitem>
             <listitem><para><emphasis>Metadata Layers:</emphasis>
                 Various layers that provide software, machine, and
                 distro Metadata.</para></listitem>
-            <listitem><para><emphasis>Soure Files:</emphasis>
+            <listitem><para><emphasis>Source Files:</emphasis>
                 Upstream releases, local projects, and SCMs.</para></listitem>
             <listitem><para><emphasis>Build System:</emphasis>
                 Processes inside the BitBake "box".
@@ -196,14 +196,14 @@
                 patches, completes compilation, analyzes output for package
                 generation, creates and tests packages, generates images, and
                 generates cross-development tools.</para></listitem>
-            <listitem><para><emphasis>Package Feeds</emphasis>
+            <listitem><para><emphasis>Package Feeds:</emphasis>
                 Package feeds into the BitBake process.</para></listitem>
-            <listitem><para><emphasis>Images</emphasis>
+            <listitem><para><emphasis>Images:</emphasis>
                 Images produced by the development process.
                 Where do they go?
                 Can you mess with them (i.e. freely delete them or move them?).
                 </para></listitem>
-            <listitem><para><emphasis>Application Development SDK</emphasis>
+            <listitem><para><emphasis>Application Development SDK:</emphasis>
                 Cross-development tools that are produced along with an image
                 or separately with BitBake.</para></listitem>
         </itemizedlist>
@@ -213,9 +213,13 @@
         <title>User Configuration</title>
 
         <para>
-            User configuration affects how you define the build.
+            User configuration helps define the build.
+            Through user configuration, you can tell BitBake the
+            target architecture for which you are building the image,
+            where to store downloaded source, and other build properties.
             The following figure shows an expanded representation of the
-            user configuration in the Yocto Project development environment:
+            user configuration box of the Yocto Project development
+            environment:
         </para>
 
         <mediaobject>
@@ -228,8 +232,8 @@
          <para>
              BitBake needs some basic configuration files in order to complete
              a build.
-             These files are <filename>*.conf</filename> files and the
-             minimally necessary ones reside as example files in the
+             These files are <filename>*.conf</filename> files.
+             The minimally necessary ones reside as example files in the
              <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
              For simplicity, this section refers to the Source Directory as
              the "Poky Directory."
@@ -328,8 +332,7 @@
              <filename>auto.conf</filename> are not created by the environment
              initialization script.
              If you want these configuration files, you must create them
-             yourself.
-             Here a bit about what these files do:
+             yourself:
              <itemizedlist>
                  <listitem><para><emphasis><filename>site.conf</filename>:</emphasis>
                      I don't really know what this does.
@@ -348,7 +351,7 @@
          </para>
 
          <para>
-             All configuration files can undergo edits to further define
+             You can edit all configuration files to further define
              the build.
              This process is represented by the "User Configuration Edits"
              box in the figure.
-- 
1.7.9.5


