Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28F884C81103
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:31 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1582721"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 17:20:30 -0700
Message-Id: <9c2f291581eeead4c6aa0014d42311f3ed25f9ff.1305245923.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 14:54:55 -0700
Date: Thu, 12 May 2011 17:20:30 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 04/25] python: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:31 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../01-use-proper-tools-for-cross-build.patch      |    2 ++
 .../python/python/02-remove-test-for-cross.patch   |    2 ++
 .../python/python/03-fix-tkinter-detection.patch   |    2 ++
 .../python/python/04-default-is-optimized.patch    |    2 ++
 .../python/05-enable-ctypes-cross-build.patch      |    2 ++
 .../06-avoid_usr_lib_termcap_path_in_linking.patch |    2 ++
 .../python/99-ignore-optimization-flag.patch       |    2 ++
 7 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/python/python/01-use-proper-tools-for-cross-build.patch b/meta/recipes-devtools/python/python/01-use-proper-tools-for-cross-build.patch
index e091431..6c769ac 100644
--- a/meta/recipes-devtools/python/python/01-use-proper-tools-for-cross-build.patch
+++ b/meta/recipes-devtools/python/python/01-use-proper-tools-for-cross-build.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 # We need to ensure our host tools get run during build, not the freshly
 # built cross-tools (this will not work), so we introduce HOSTPYTHON and HOSTPGEN.
 # Signed-Off: Michael 'Mickey' Lauer <mickey@vanille-media.de>
diff --git a/meta/recipes-devtools/python/python/02-remove-test-for-cross.patch b/meta/recipes-devtools/python/python/02-remove-test-for-cross.patch
index b1c0bfb..9b164d5 100644
--- a/meta/recipes-devtools/python/python/02-remove-test-for-cross.patch
+++ b/meta/recipes-devtools/python/python/02-remove-test-for-cross.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 # OpenEmbedded prepopulates the autotools site cache, so if this
 # would be using AC_TRY_CACHE, we could patch it in a more sane way
 # Alas, I don't have enough autotalent to do that.
diff --git a/meta/recipes-devtools/python/python/03-fix-tkinter-detection.patch b/meta/recipes-devtools/python/python/03-fix-tkinter-detection.patch
index a1a385a..d74e4b1 100644
--- a/meta/recipes-devtools/python/python/03-fix-tkinter-detection.patch
+++ b/meta/recipes-devtools/python/python/03-fix-tkinter-detection.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 # We need to supply STAGING_INCDIR here, otherwise the Tk headers
 # will not be found.
 # Signed-Off: Michael 'Mickey' Lauer <mickey@vanille.de>
diff --git a/meta/recipes-devtools/python/python/04-default-is-optimized.patch b/meta/recipes-devtools/python/python/04-default-is-optimized.patch
index c4617ab..042ac5e 100644
--- a/meta/recipes-devtools/python/python/04-default-is-optimized.patch
+++ b/meta/recipes-devtools/python/python/04-default-is-optimized.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 # when compiling for an embedded system, we need every bit of
 # performance we can get. default to optimized with the option
 # of opt-out.
diff --git a/meta/recipes-devtools/python/python/05-enable-ctypes-cross-build.patch b/meta/recipes-devtools/python/python/05-enable-ctypes-cross-build.patch
index 58b8078..a68a206 100644
--- a/meta/recipes-devtools/python/python/05-enable-ctypes-cross-build.patch
+++ b/meta/recipes-devtools/python/python/05-enable-ctypes-cross-build.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 # CTypes need to know the actual host we are building on.
 # Signed-Off: Michael Dietrich <mdt@emdete.de>
 
diff --git a/meta/recipes-devtools/python/python/06-avoid_usr_lib_termcap_path_in_linking.patch b/meta/recipes-devtools/python/python/06-avoid_usr_lib_termcap_path_in_linking.patch
index 68c9d5c..b39b22f 100644
--- a/meta/recipes-devtools/python/python/06-avoid_usr_lib_termcap_path_in_linking.patch
+++ b/meta/recipes-devtools/python/python/06-avoid_usr_lib_termcap_path_in_linking.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 The poison directories patch has detected library path issue while 
 compiling the python in cross environment, as seen bellow.
 
diff --git a/meta/recipes-devtools/python/python/99-ignore-optimization-flag.patch b/meta/recipes-devtools/python/python/99-ignore-optimization-flag.patch
index 0bd1a2d..a5d9812 100644
--- a/meta/recipes-devtools/python/python/99-ignore-optimization-flag.patch
+++ b/meta/recipes-devtools/python/python/99-ignore-optimization-flag.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 # Reinstate the empty -O option to fix weird mixing of native and target
 # binaries and libraries with LD_LIBRARY_PATH when host==target
 #
-- 
1.7.3.4


