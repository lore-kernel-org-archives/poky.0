Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34BB24C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 01:40:31 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 23:40:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,212,1291622400"; d="scan'208";a="870772698"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 23:40:08 -0800
Message-Id: <7361c24b4f0d1fcdf4861f03f80de0fd3dedfdac.1293003470.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293003470.git.sgw@linux.intel.com>
References: <cover.1293003470.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Tue, 21 Dec 2010 23:04:24 -0800
Date: Tue, 21 Dec 2010 23:40:07 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/4] apt: update use-host patch to support x86_64
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
X-List-Received-Date: Wed, 22 Dec 2010 07:40:31 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-devtools/apt/apt-0.7.14/use-host.patch |   20 ++++++++------------
 1 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/meta/recipes-devtools/apt/apt-0.7.14/use-host.patch b/meta/recipes-devtools/apt/apt-0.7.14/use-host.patch
index 894a697..09698a6 100644
--- a/meta/recipes-devtools/apt/apt-0.7.14/use-host.patch
+++ b/meta/recipes-devtools/apt/apt-0.7.14/use-host.patch
@@ -3,11 +3,11 @@
  configure.in       |    2 +-
  2 files changed, 4 insertions(+), 2 deletions(-)
 
+Index: apt-0.7.14/buildlib/sizetable
+===================================================================
 --- apt-0.7.14.orig/buildlib/sizetable
 +++ apt-0.7.14/buildlib/sizetable
-@@ -9,16 +9,19 @@
- #
- # This is used primarily for the MD5 algorithm.
+@@ -11,6 +11,9 @@
  # The format is:-
  # CPU endian sizeof: char, int, short, long
  i386    little  1 4 2 4
@@ -17,21 +17,19 @@
  armeb   big     1 4 2 4
  arm     little  1 4 2 4
  alpha   little  1 4 2 8
- mipsel  little  1 4 2 4
- sparc   big     1 4 2 4
- sparc64 big     1 4 2 8
- m68k    big     1 4 2 4
+@@ -21,4 +24,5 @@ m68k    big     1 4 2 4
  powerpc big     1 4 2 4
  mips    big     1 4 2 4
  hppa    big     1 4 2 4
 -m32r	big	1 4 2 4
 \ No newline at end of file
 +m32r	big	1 4 2 4
++x86_64	little	1 4 2 8
+Index: apt-0.7.14/configure.in
+===================================================================
 --- apt-0.7.14.orig/configure.in
 +++ apt-0.7.14/configure.in
-@@ -86,11 +86,11 @@ AC_SUBST(BDBLIB)
- dnl Converts the ARCH to be something singular for this general CPU family
- dnl This is often the dpkg architecture string.
+@@ -88,7 +88,7 @@ dnl This is often the dpkg architecture 
  dnl First check against the full canonical canoncial-system-type in $target
  dnl and if that fails, just look for the cpu
  AC_MSG_CHECKING(debian architecture)
@@ -40,5 +38,3 @@
  if test "x$archset" = "x"; then
     AC_MSG_ERROR([failed: use --host= or output from dpkg-architecture])
  fi
- AC_MSG_RESULT($archset)
- AC_DEFINE_UNQUOTED(COMMON_ARCH,"$archset")
-- 
1.7.1.1


