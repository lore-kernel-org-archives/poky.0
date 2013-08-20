Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D505E015C5
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2013 01:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="390032448"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2013 01:40:28 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 96DF86A4007;
	Tue, 20 Aug 2013 01:40:26 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:03 +0200
Message-Id: <e3550b4f283b4cde4677bf6c2e0db8fa7f68184d.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 021/186] dev-manual: Changed repo name.
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

Changed the poky-extras repo name to meta-yocto-kernel-extras
repo.  This repository had become stale and Bruce did some work
to freshen it up a bit.  The name was poor too.  That drove the
name change.

(From yocto-docs rev: 4fa2b0f86cfe7191b8de7577d8d8ad6adb984a4e)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/dev-manual/dev-manual-start.xml |   38 ++++++++++++-------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
index 02f6bd0..0920393 100644
--- a/documentation/dev-manual/dev-manual-start.xml
+++ b/documentation/dev-manual/dev-manual-start.xml
@@ -72,10 +72,10 @@
             <listitem><para><emphasis>Packages:</emphasis>  The OpenEmbedded build system
                 requires certain packages exist on your development system (e.g. Python 2.6 or 2.7).
                 See "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>"
-                section in the Yocto Project Quick Start and the 
+                section in the Yocto Project Quick Start and the
                 "<ulink url='&YOCTO_DOCS_REF_URL;#required-packages-for-the-host-development-system'>Required Packages for the Host Development System</ulink>"
-                section in the Yocto Project Reference Manual for the exact 
-                package requirements and the installation commands to install 
+                section in the Yocto Project Reference Manual for the exact
+                package requirements and the installation commands to install
                 them for the supported distributions.
                 </para></listitem>
             <listitem id='local-yp-release'><para><emphasis>Yocto Project Release:</emphasis>
@@ -88,14 +88,14 @@
                     hierarchical set of files as the "Source Directory."
                 </note>
                 <itemizedlist>
-                    <listitem><para><emphasis>Tarball Extraction:</emphasis>  
-                        If you are not going to contribute back into the Yocto 
-                        Project, you can simply go to the 
-                        <ulink url='&YOCTO_HOME_URL;'>Yocto Project Website</ulink>, 
+                    <listitem><para><emphasis>Tarball Extraction:</emphasis>
+                        If you are not going to contribute back into the Yocto
+                        Project, you can simply go to the
+                        <ulink url='&YOCTO_HOME_URL;'>Yocto Project Website</ulink>,
                         select the "Downloads" tab, and choose what you want.
-                        Once you have the tarball, just extract it into a 
+                        Once you have the tarball, just extract it into a
                         directory of your choice.</para>
-                        <para>For example, the following command extracts the 
+                        <para>For example, the following command extracts the
                         Yocto Project &DISTRO; release tarball
                         into the current working directory and sets up the local Source Directory
                         with a top-level folder named <filename>&YOCTO_POKY;</filename>:
@@ -126,7 +126,7 @@
      remote: Compressing objects: 100% (47428/47428), done.
      remote: Total 183981 (delta 132271), reused 183703 (delta 132044)
      Receiving objects: 100% (183981/183981), 89.71 MiB | 2.93 MiB/s, done.
-     Resolving deltas: 100% (132271/132271), done.   
+     Resolving deltas: 100% (132271/132271), done.
                         </literallayout></para>
                         <para>For another example of how to set up your own local Git repositories, see this
                         <ulink url='&YOCTO_WIKI_URL;/wiki/Transcript:_from_git_checkout_to_meta-intel_BSP'>
@@ -168,9 +168,9 @@
      Cloning into 'my-linux-yocto-3.8-work'...
      done.
                 </literallayout></para></listitem>
-            <listitem id='poky-extras-repo'><para><emphasis>
-                The <filename>poky-extras</filename> Git Repository</emphasis>:
-                The <filename>poky-extras</filename> Git repository contains Metadata needed
+            <listitem id='meta-yocto-kernel-extras-repo'><para><emphasis>
+                The <filename>meta-yocto-kernel-extras</filename> Git Repository</emphasis>:
+                The <filename>meta-yocto-kernel-extras</filename> Git repository contains Metadata needed
                 only if you are modifying and building the kernel image.
                 In particular, it contains the kernel BitBake append (<filename>.bbappend</filename>)
                 files that you
@@ -178,17 +178,17 @@
                 image.
                 Pointing to these local files is much more efficient than requiring a download of the
                 kernel's source files from upstream each time you make changes to the kernel.</para>
-                <para>You can find the <filename>poky-extras</filename> Git Repository in the
+                <para>You can find the <filename>meta-yocto-kernel-extras</filename> Git Repository in the
                 "Yocto Metadata Layers" area of the Yocto Project Source Repositories at
                 <ulink url='&YOCTO_GIT_URL;/cgit.cgi'></ulink>.
                 It is good practice to create this Git repository inside the Source Directory.</para>
-                <para>Following is an example that creates the <filename>poky-extras</filename> Git
+                <para>Following is an example that creates the <filename>meta-yocto-kernel-extras</filename> Git
                 repository inside the Source Directory, which is named <filename>poky</filename>
                 in this case:
                 <literallayout class='monospaced'>
      $ cd ~/poky
-     $ git clone git://git.yoctoproject.org/poky-extras poky-extras
-     Cloning into 'poky-extras'...
+     $ git clone git://git.yoctoproject.org/meta-yocto-kernel-extras meta-yocto-kernel-extras
+     Cloning into 'meta-yocto-kernel-extras'...
      remote: Counting objects: 690, done.
      remote: Compressing objects: 100% (431/431), done.
      remote: Total 690 (delta 238), reused 690 (delta 238)
@@ -223,10 +223,10 @@
                 information on BSP Layers.
                 <itemizedlist>
                     <listitem><para><emphasis>Tarball Extraction:</emphasis>  You can download any released
-                        BSP tarball from the same "Downloads" page of the 
+                        BSP tarball from the same "Downloads" page of the
                         <ulink url='&YOCTO_HOME_URL;'>Yocto Project Website</ulink>
                         to get the Yocto Project release.
-                        Once on the "Download" page, look for "BSP" under the 
+                        Once on the "Download" page, look for "BSP" under the
                         "Type" heading.</para>
                         <para>Once you have the tarball, just extract it into a directory of your choice.
                         Again, this method just produces a snapshot of the BSP layer in the form
-- 
1.7.9.5


