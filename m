Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74B69E015C2
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:40:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814926"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:37 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id ADE136A4007;
	Tue, 20 Aug 2013 01:40:34 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:08 +0200
Message-Id: <d917158ff68cbdddd1c1b3506df899c9acea86ac.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 026/186] README: Updated the file to reflect current state of documentation
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:38 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This file was out of date.  I replaced the kernel-manual descriptions
with dev-kernel.  Also, added the profiling manual.  Finally, changed
the poky-ref-manual string to ref-manual.

(From yocto-docs rev: a1e60078dcfcfd5a912d78f981fe70dc1aa33e37)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/README |   65 ++++++++++++++++++++++++--------------------------
 1 file changed, 31 insertions(+), 34 deletions(-)

diff --git a/documentation/README b/documentation/README
index 911484c..d01678d 100644
--- a/documentation/README
+++ b/documentation/README
@@ -2,60 +2,60 @@ documentation
 =============
 
 This is the directory that contains the Yocto Project documentation.  The Yocto
-Project source repositories at http://git.yoctoproject.org/cgit.cgi have two 
+Project source repositories at http://git.yoctoproject.org/cgit.cgi have two
 instances of the "documentation" directory.  You should understand each of
 these instances.
 
   poky/documentation - The directory within the poky Git repository containing
-                       the set of Yocto Project manuals.  When you clone the 
-                       poky Git repository, the documentation directory 
-                       contains the manuals.  The state of the manuals in this 
-                       directory is guaranteed to reflect the latest Yocto 
-                       Project release.  The manuals at the tip of this 
-                       directory will also likely contain most manual 
+                       the set of Yocto Project manuals.  When you clone the
+                       poky Git repository, the documentation directory
+                       contains the manuals.  The state of the manuals in this
+                       directory is guaranteed to reflect the latest Yocto
+                       Project release.  The manuals at the tip of this
+                       directory will also likely contain most manual
                        development changes.
 
-  yocto-docs/documentation - The Git repository for the Yocto Project manuals.  
-                             This repository is where manual development 
-                             occurs.  If you plan on contributing back to the 
-                             Yocto Project documentation, you should set up 
-                             a local Git repository based on this upstream 
+  yocto-docs/documentation - The Git repository for the Yocto Project manuals.
+                             This repository is where manual development
+                             occurs.  If you plan on contributing back to the
+                             Yocto Project documentation, you should set up
+                             a local Git repository based on this upstream
                              repository as follows:
 
                                git clone git://git.yoctoproject.org/yocto-docs
 
-                             Changes and patches are first pushed to the 
-                             yocto-docs Git repository.  Later, they make it 
-                             into the poky Git repository found at 
-                             git://git.yoctoproject.org/poky.  
+                             Changes and patches are first pushed to the
+                             yocto-docs Git repository.  Later, they make it
+                             into the poky Git repository found at
+                             git://git.yoctoproject.org/poky.
 
 Manual Organization
 ===================
 
 Folders exist for individual manuals as follows:
 
-* adt-manual       - The Yocto Project Application Development Toolkit (ADT)
-                     User's Guide.
-* bsp-guide        - The Yocto Project Board Support (BSP) Developer's Guide
+* adt-manual       - The Yocto Project Application Developer's Guide.
+* bsp-guide        - The Yocto Project Board Support Package (BSP) Developer's Guide
 * dev-manual       - The Yocto Project Development Manual
-* kernel-manual    - The Yocto Project Kernel Architecture and Use Manual
-* poky-ref-manual  - The Yocto Project Reference Manual
+* kernel-dev       - The Yocto Project Linux Kernel Development Manual
+* ref-manual       - The Yocto Project Reference Manual
 * yocto-project-qs - The Yocto Project Quick Start
-* mega-manual      - The aggregated manual comprised of all YP manuals and guides
+* mega-manual      - An aggregated manual comprised of all YP manuals and guides
+* profile-manual   - The Yocto Project Profile and Tracing Manual
 
 Each folder is self-contained regarding content and figures.  Note that there
 is a sed file needed to process the links of the mega-manual.  The sed file
-is located in the tools directory.  Also note that the figures folder in the 
+is located in the tools directory.  Also note that the figures folder in the
 mega-manual directory contains duplicates of all the figures in the YP folders
 directories for all YP manuals and guides.
 
-If you want to find HTML versions of the Yocto Project manuals on the web, 
-go to http://www.yoctoproject.org and click on the "Documentation" tab.  From 
+If you want to find HTML versions of the Yocto Project manuals on the web,
+go to http://www.yoctoproject.org and click on the "Documentation" tab.  From
 there you have access to archived documentation from previous releases, current
-documentation for the latest release, and "Docs in Progress" for the release 
+documentation for the latest release, and "Docs in Progress" for the release
 currently being developed.
 
-In general, the Yocto Project site (http://www.yoctoproject.org) is a great 
+In general, the Yocto Project site (http://www.yoctoproject.org) is a great
 reference for both information and downloads.
 
 Makefile
@@ -66,8 +66,8 @@ tarballs, etc.  Details on how the Makefile work are documented
 inside the Makefile.  See that file for more information.
 
 To build a manual, you run the make command and pass it the name
-of the folder containing the manual's contents. 
-For example, the following command run from the documentation directory 
+of the folder containing the manual's contents.
+For example, the following command run from the documentation directory
 creates an HTML and a PDF version of the ADT manual.
 The DOC variable specifies the manual you are making:
 
@@ -86,9 +86,6 @@ Contains various templates, fonts, and some old PNG files.
 tools
 =====
 Contains a tool to convert the DocBook files to PDF format.  This folder also
-contains the mega-manual.sed file, which is used by Makefile to process 
-cross-references from within the manual that normally go to an external 
+contains the mega-manual.sed file, which is used by Makefile to process
+cross-references from within the manual that normally go to an external
 manual.
-
-
-
-- 
1.7.9.5


