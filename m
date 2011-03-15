Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F5154C80AB8
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 16:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; 
	d="scan'208,217";a="720559688"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 16:42:30 -0700
Message-Id: <688f74aabc74c64f01b196d2d4d75a422c84a038.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 15:27:51 -0600
Date: Tue, 15 Mar 2011 17:43:22 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 05/13] documentation/adt-manual: cleaned up labels in chapter files
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:43 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The initial chapters were failing to make due to duplicate section
identifiers that were created when I copied in the original files.
I gave each of the five chapter files (adt-command.xml, adt-eclipse.xml,
adt-intro.xml, adt-package.xml, and adt-prepare.xml) unique identifier
tags.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-command.xml |    4 ++--
 documentation/adt-manual/adt-eclipse.xml |    4 ++--
 documentation/adt-manual/adt-intro.xml   |    2 +-
 documentation/adt-manual/adt-package.xml |    4 ++--
 documentation/adt-manual/adt-prepare.xml |    4 ++--
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/documentation/adt-manual/adt-command.xml b/documentation/adt-manual/adt-command.xml
index 05e5443..d459d50 100644
--- a/documentation/adt-manual/adt-command.xml
+++ b/documentation/adt-manual/adt-command.xml
@@ -1,11 +1,11 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<chapter id='kernel-doc-intro'>
+<chapter id='adt-command'>
 
 <title>Yocto Project Kernel Architecture and Use Manual</title>
 
-<section id='book-intro'>
+<section id='command'>
     <title>Introduction</title>
     <para>
         The Yocto Project presents the kernel as a fully patched, history-clean git
diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index 05e5443..2bb5bd5 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -1,11 +1,11 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<chapter id='kernel-doc-intro'>
+<chapter id='adt-eclipse'>
 
 <title>Yocto Project Kernel Architecture and Use Manual</title>
 
-<section id='book-intro'>
+<section id='eclipse'>
     <title>Introduction</title>
     <para>
         The Yocto Project presents the kernel as a fully patched, history-clean git
diff --git a/documentation/adt-manual/adt-intro.xml b/documentation/adt-manual/adt-intro.xml
index 05e5443..c1e283a 100644
--- a/documentation/adt-manual/adt-intro.xml
+++ b/documentation/adt-manual/adt-intro.xml
@@ -1,7 +1,7 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<chapter id='kernel-doc-intro'>
+<chapter id='adt-intro'>
 
 <title>Yocto Project Kernel Architecture and Use Manual</title>
 
diff --git a/documentation/adt-manual/adt-package.xml b/documentation/adt-manual/adt-package.xml
index 05e5443..6139442 100644
--- a/documentation/adt-manual/adt-package.xml
+++ b/documentation/adt-manual/adt-package.xml
@@ -1,11 +1,11 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<chapter id='kernel-doc-intro'>
+<chapter id='adt-package'>
 
 <title>Yocto Project Kernel Architecture and Use Manual</title>
 
-<section id='book-intro'>
+<section id='package'>
     <title>Introduction</title>
     <para>
         The Yocto Project presents the kernel as a fully patched, history-clean git
diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 05e5443..928a091 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -1,11 +1,11 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<chapter id='kernel-doc-intro'>
+<chapter id='adt-prepare'>
 
 <title>Yocto Project Kernel Architecture and Use Manual</title>
 
-<section id='book-intro'>
+<section id='prepare'>
     <title>Introduction</title>
     <para>
         The Yocto Project presents the kernel as a fully patched, history-clean git
-- 
1.7.1


