Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E64A14C80ADD
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:35 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 23:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="750754"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 23:29:34 -0700
Message-Id: <7c863201e69439891288cc233f4b6c8bd5ce95c4.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 12:00:17 +0800
Date: Wed, 11 May 2011 14:26:59 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 11/24] libx11: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:36 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

remove 2 unused xim.patch.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/libx11-1.3.4/include_fix.patch        |    2 +
 .../xorg-lib/libx11-1.3.4/nodolt.patch             |    2 +
 .../libx11-1.3.4/x11_disable_makekeys.patch        |    2 +
 .../xorg-lib/libx11-git/X18NCMSstubs.diff          |    2 +
 .../xorg-lib/libx11-git/fix-disable-xlocale.diff   |    2 +
 .../libx11-git/fix-utf8-wrong-define.patch         |    1 +
 .../xorg-lib/libx11-git/include_fix.patch          |    2 +
 .../xorg-lib/libx11-git/nodolt.patch               |    2 +
 .../xorg-lib/libx11-git/x11_disable_makekeys.patch |    2 +
 .../recipes-graphics/xorg-lib/libx11-git/xim.patch |   55 --------------------
 .../xorg-lib/libx11/X18NCMSstubs.diff              |    2 +
 .../xorg-lib/libx11/fix-disable-xlocale.diff       |    2 +
 .../xorg-lib/libx11/fix-utf8-wrong-define.patch    |    1 +
 .../xorg-lib/libx11/include_fix.patch              |    2 +
 meta/recipes-graphics/xorg-lib/libx11/nodolt.patch |    2 +
 .../xorg-lib/libx11/x11_disable_makekeys.patch     |    2 +
 meta/recipes-graphics/xorg-lib/libx11/xim.patch    |   55 --------------------
 17 files changed, 28 insertions(+), 110 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-lib/libx11-git/xim.patch
 delete mode 100644 meta/recipes-graphics/xorg-lib/libx11/xim.patch

diff --git a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/include_fix.patch b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/include_fix.patch
index c8aa085..eeb4175 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/include_fix.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/include_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  configure.ac |    6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/nodolt.patch b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/nodolt.patch
index 011c23e..bf6c7d5 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/nodolt.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/nodolt.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- libX11-1.3.4.orig/configure.ac
 +++ libX11-1.3.4/configure.ac
 @@ -32,7 +32,6 @@
diff --git a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/x11_disable_makekeys.patch b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/x11_disable_makekeys.patch
index 4036757..561b577 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/x11_disable_makekeys.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/x11_disable_makekeys.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  src/util/Makefile.am |   21 -----------------
  1 file changed, 21 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/X18NCMSstubs.diff b/meta/recipes-graphics/xorg-lib/libx11-git/X18NCMSstubs.diff
index 2dd27fc..b49fc22 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-git/X18NCMSstubs.diff
+++ b/meta/recipes-graphics/xorg-lib/libx11-git/X18NCMSstubs.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 ---
  configure.ac       |    9 -
  src/Makefile.am    |    5 
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/fix-disable-xlocale.diff b/meta/recipes-graphics/xorg-lib/libx11-git/fix-disable-xlocale.diff
index 9dbf6da..7dcdd6a 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-git/fix-disable-xlocale.diff
+++ b/meta/recipes-graphics/xorg-lib/libx11-git/fix-disable-xlocale.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- libX11-X11R7.0-1.0.0/src/Font.c.orig	2006-03-12 18:35:42.000000000 +0100
 +++ libX11-X11R7.0-1.0.0/src/Font.c	2006-03-12 18:40:27.000000000 +0100
 @@ -701,7 +701,11 @@
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/fix-utf8-wrong-define.patch b/meta/recipes-graphics/xorg-lib/libx11-git/fix-utf8-wrong-define.patch
index a098db1..26d3349 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-git/fix-utf8-wrong-define.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-git/fix-utf8-wrong-define.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.holgerschurig.de/patcher.html
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/include_fix.patch b/meta/recipes-graphics/xorg-lib/libx11-git/include_fix.patch
index 99ed571..b3bcbab 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-git/include_fix.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-git/include_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  configure.ac |    6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/nodolt.patch b/meta/recipes-graphics/xorg-lib/libx11-git/nodolt.patch
index ecf9625..cc05fdc 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-git/nodolt.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-git/nodolt.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: libX11-1.2.1/configure.ac
 ===================================================================
 --- libX11-1.2.1.orig/configure.ac	2009-07-02 14:07:54.000000000 +0100
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/x11_disable_makekeys.patch b/meta/recipes-graphics/xorg-lib/libx11-git/x11_disable_makekeys.patch
index 9cc2bbb..5dc6f06 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-git/x11_disable_makekeys.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-git/x11_disable_makekeys.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  src/util/Makefile.am |   17 -----------------
  1 file changed, 17 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11-git/xim.patch b/meta/recipes-graphics/xorg-lib/libx11-git/xim.patch
deleted file mode 100644
index 0eab197..0000000
--- a/meta/recipes-graphics/xorg-lib/libx11-git/xim.patch
+++ /dev/null
@@ -1,55 +0,0 @@
---- libX11-6.2.1/src/X18NCMSstubs.c	2003-12-04 22:47:47.000000000 +0000
-+++ libX11-6.2.1/src/X18NCMSstubs.c-new	2005-12-09 12:09:03.000000000 +0000
-@@ -90,6 +90,52 @@
-   return;
- }
- 
-+XIM
-+XOpenIM (
-+    Display* display,
-+    struct _XrmHashBucketRec* rdb,
-+    char* res_name,
-+    char* res_class)
-+{
-+  return (XIM) NULL;
-+}
-+
-+Status
-+XCloseIM ( XIM im )
-+{
-+  return NULL;
-+}
-+
-+XIC
-+XCreateIC ( XIM im, ...)
-+{
-+  return NULL;
-+}
-+
-+void
-+XDestroyIC ( XIC ic )
-+{
-+  return;
-+}
-+
-+int
-+XmbLookupString (
-+    XIC ic,
-+    XKeyPressedEvent* ev,
-+    char* buffer,
-+    int nbytes,
-+    KeySym* keysym,
-+    Status* status)
-+{
-+  return XLookupNone;
-+}
-+
-+char *
-+XGetICValues( XIC ic, ...)
-+{
-+  return (char *) NULL;
-+}
-+
- XPointer
- _XimGetLocaleCode ( _Xconst char* encoding_name )
- {
diff --git a/meta/recipes-graphics/xorg-lib/libx11/X18NCMSstubs.diff b/meta/recipes-graphics/xorg-lib/libx11/X18NCMSstubs.diff
index 54b1727..2e86a48 100644
--- a/meta/recipes-graphics/xorg-lib/libx11/X18NCMSstubs.diff
+++ b/meta/recipes-graphics/xorg-lib/libx11/X18NCMSstubs.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- libX11-X11R7.0-1.0.0/src/imConv.c.orig	2006-03-08 09:46:03.000000000 +0100
 +++ libX11-X11R7.0-1.0.0/src/imConv.c	2006-03-08 10:50:10.000000000 +0100
 @@ -83,6 +83,7 @@
diff --git a/meta/recipes-graphics/xorg-lib/libx11/fix-disable-xlocale.diff b/meta/recipes-graphics/xorg-lib/libx11/fix-disable-xlocale.diff
index 9dbf6da..7dcdd6a 100644
--- a/meta/recipes-graphics/xorg-lib/libx11/fix-disable-xlocale.diff
+++ b/meta/recipes-graphics/xorg-lib/libx11/fix-disable-xlocale.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- libX11-X11R7.0-1.0.0/src/Font.c.orig	2006-03-12 18:35:42.000000000 +0100
 +++ libX11-X11R7.0-1.0.0/src/Font.c	2006-03-12 18:40:27.000000000 +0100
 @@ -701,7 +701,11 @@
diff --git a/meta/recipes-graphics/xorg-lib/libx11/fix-utf8-wrong-define.patch b/meta/recipes-graphics/xorg-lib/libx11/fix-utf8-wrong-define.patch
index a098db1..26d3349 100644
--- a/meta/recipes-graphics/xorg-lib/libx11/fix-utf8-wrong-define.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11/fix-utf8-wrong-define.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.holgerschurig.de/patcher.html
diff --git a/meta/recipes-graphics/xorg-lib/libx11/include_fix.patch b/meta/recipes-graphics/xorg-lib/libx11/include_fix.patch
index 99ed571..b3bcbab 100644
--- a/meta/recipes-graphics/xorg-lib/libx11/include_fix.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11/include_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  configure.ac |    6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11/nodolt.patch b/meta/recipes-graphics/xorg-lib/libx11/nodolt.patch
index ecf9625..cc05fdc 100644
--- a/meta/recipes-graphics/xorg-lib/libx11/nodolt.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11/nodolt.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: libX11-1.2.1/configure.ac
 ===================================================================
 --- libX11-1.2.1.orig/configure.ac	2009-07-02 14:07:54.000000000 +0100
diff --git a/meta/recipes-graphics/xorg-lib/libx11/x11_disable_makekeys.patch b/meta/recipes-graphics/xorg-lib/libx11/x11_disable_makekeys.patch
index 6705782..0445835 100644
--- a/meta/recipes-graphics/xorg-lib/libx11/x11_disable_makekeys.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11/x11_disable_makekeys.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  src/util/Makefile.am |   17 -----------------
  1 file changed, 17 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11/xim.patch b/meta/recipes-graphics/xorg-lib/libx11/xim.patch
deleted file mode 100644
index 0eab197..0000000
--- a/meta/recipes-graphics/xorg-lib/libx11/xim.patch
+++ /dev/null
@@ -1,55 +0,0 @@
---- libX11-6.2.1/src/X18NCMSstubs.c	2003-12-04 22:47:47.000000000 +0000
-+++ libX11-6.2.1/src/X18NCMSstubs.c-new	2005-12-09 12:09:03.000000000 +0000
-@@ -90,6 +90,52 @@
-   return;
- }
- 
-+XIM
-+XOpenIM (
-+    Display* display,
-+    struct _XrmHashBucketRec* rdb,
-+    char* res_name,
-+    char* res_class)
-+{
-+  return (XIM) NULL;
-+}
-+
-+Status
-+XCloseIM ( XIM im )
-+{
-+  return NULL;
-+}
-+
-+XIC
-+XCreateIC ( XIM im, ...)
-+{
-+  return NULL;
-+}
-+
-+void
-+XDestroyIC ( XIC ic )
-+{
-+  return;
-+}
-+
-+int
-+XmbLookupString (
-+    XIC ic,
-+    XKeyPressedEvent* ev,
-+    char* buffer,
-+    int nbytes,
-+    KeySym* keysym,
-+    Status* status)
-+{
-+  return XLookupNone;
-+}
-+
-+char *
-+XGetICValues( XIC ic, ...)
-+{
-+  return (char *) NULL;
-+}
-+
- XPointer
- _XimGetLocaleCode ( _Xconst char* encoding_name )
- {
-- 
1.7.2


