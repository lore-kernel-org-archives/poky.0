Return-Path: <martyn.welch@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A79FE00D7F; Wed, 27 Apr 2016 02:47:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 405 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Apr 2016 02:47:13 PDT
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA6C4E00D7D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2016 02:47:13 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: martyn) with ESMTPSA id 4F5502613B0
Received: by kratos.localdomain (Postfix, from userid 1000)
	id F3E672018E966; Wed, 27 Apr 2016 10:40:23 +0100 (BST)
From: Martyn Welch <martyn.welch@collabora.co.uk>
To: Jussi Kukkonen <jussi.jukkonen@intel.com>
Date: Wed, 27 Apr 2016 10:40:17 +0100
Message-Id: <1461750017-14514-1-git-send-email-martyn.welch@collabora.co.uk>
X-Mailer: git-send-email 1.8.3.1
Cc: poky@yoctoproject.org
Subject: [PATCH] [jethro] glew: Correct version in autotooling patches
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
X-List-Received-Date: Wed, 27 Apr 2016 09:47:16 -0000

The additional autotooling patched into glew claims the version is 1.9.0
whilst we are building 1.12.0. The version in the autotooling is used to
set the version number in the pkgconfig file, this results in the
configuration of packages which depend on glew > 1.9.0 failing.

This patch updates the version number used in the patches to match that of
the version being built.

Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
---
 meta/recipes-graphics/glew/glew/autotools.patch           | 4 ++--
 meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-graphics/glew/glew/autotools.patch b/meta/recipes-graphics/glew/glew/autotools.patch
index 7dfe087..81a1343 100644
--- a/meta/recipes-graphics/glew/glew/autotools.patch
+++ b/meta/recipes-graphics/glew/glew/autotools.patch
@@ -20,7 +20,7 @@ Index: glew/configure.ac
 +# Process this file with autoconf to produce a configure script.
 +
 +AC_PREREQ([2.62])
-+AC_INIT([glew], [1.9.0], [BUG-REPORT-ADDRESS])
++AC_INIT([glew], [1.12.0], [BUG-REPORT-ADDRESS])
 +AC_CONFIG_SRCDIR([src/glew.c])
 +AC_CONFIG_HEADERS([config.h])
 +AM_INIT_AUTOMAKE([-Wall -Werror foreign])
@@ -77,7 +77,7 @@ Index: glew/configure.ac
 +# for now we use the same version as the package, but that should be avoided
 +# in the future
 +
-+AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])
++AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])
 +
 +AC_CONFIG_FILES([Makefile
 +                 include/Makefile
diff --git a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
index 70a99ae..baab9ff 100644
--- a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
+++ b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
@@ -20,7 +20,7 @@ Index: glew-1.11.0/configure.ac
 ===================================================================
 --- glew-1.11.0.orig/configure.ac
 +++ glew-1.11.0/configure.ac
-@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])
+@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])
  
  AC_CONFIG_FILES([Makefile
                   include/Makefile
-- 
1.8.3.1


