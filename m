Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 963F94C811ED
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:44:58 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 1194D30535
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:52 -0500 (EST)
Message-Id: <288b548fd70b4f7cb35e463156dbd2d0b33a6430.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 4 Jan 2011 15:26:03 -0800
Date: Wed, 05 Jan 2011 13:44:50 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 1194D30535.A3415
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/8] dbus-glib: delete unused patch
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
X-List-Received-Date: Wed, 05 Jan 2011 21:44:58 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../dbus/dbus-glib-0.88/fix_asneeded.patch         |   17 -----------------
 1 files changed, 0 insertions(+), 17 deletions(-)
 delete mode 100644 meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch

diff --git a/meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch b/meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
deleted file mode 100644
index 3065557..0000000
--- a/meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-# not sure the reason for changing link order. Disable it for now, but keep for a while
-#
-# comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-10
-
-Index: dbus-glib-0.82/dbus/Makefile.am
-===================================================================
---- dbus-glib-0.82.orig/dbus/Makefile.am	2009-07-16 15:54:44.000000000 +0100
-+++ dbus-glib-0.82/dbus/Makefile.am	2009-12-11 09:27:20.000000000 +0000
-@@ -105,7 +105,7 @@
- 
- dbus_bash_completion_helper_SOURCES =                 	\
- 	dbus-bash-completion-helper.c
--dbus_bash_completion_helper_LDADD=$(DBUS_LIBS) $(DBUS_GLIB_LIBS) $(builddir)/libdbus-gtool.la -lexpat $(builddir)/libdbus-glib-1.la
-+dbus_bash_completion_helper_LDADD=$(DBUS_LIBS) $(DBUS_GLIB_LIBS) $(builddir)/libdbus-gtool.la $(builddir)/libdbus-glib-1.la -lexpat
- 
- 
- EXTRA_DIST=dbus-gmarshal.list make-dbus-glib-error-switch.sh make-dbus-glib-error-enum.sh dbus-bash-completion.sh.in
-- 
1.7.1


