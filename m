Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0103C4C80FD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:46:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="574633019"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdai-0007lC-0P
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:08 +0800
Message-Id: <17926fdb9c3d4ecc9917675607f0281750f673da.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 12:35:26 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/9] dbus: upgrade to version 1.4.0
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
X-List-Received-Date: Wed, 17 Nov 2010 08:46:47 -0000

from 1.2.24

 - fix-install-daemon is removed since two binaries can be handled
   correctly by Makefile

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../dbus/dbus-1.2.24/fix-install-daemon.patch      |   56 --------------------
 .../dbus/{dbus-1.2.24 => dbus-1.4.0}/dbus-1.init   |    0
 .../dbus/{dbus-1.2.24 => dbus-1.4.0}/tmpdir.patch  |    0
 meta/recipes-core/dbus/dbus.inc                    |    1 -
 .../dbus/{dbus_1.2.24.bb => dbus_1.4.0.bb}         |    2 +-
 5 files changed, 1 insertions(+), 58 deletions(-)
 delete mode 100644 meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch
 rename meta/recipes-core/dbus/{dbus-1.2.24 => dbus-1.4.0}/dbus-1.init (100%)
 rename meta/recipes-core/dbus/{dbus-1.2.24 => dbus-1.4.0}/tmpdir.patch (100%)
 rename meta/recipes-core/dbus/{dbus_1.2.24.bb => dbus_1.4.0.bb} (64%)

diff --git a/meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch b/meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch
deleted file mode 100644
index edb63a5..0000000
--- a/meta/recipes-core/dbus/dbus-1.2.24/fix-install-daemon.patch
+++ /dev/null
@@ -1,56 +0,0 @@
-# Update fix-daemon-install patch to use automake magic to avoid the wrapper scripts
-#
-# original by RP, updated to handle dbus-daemon-launch-helper by Kevin Tian <kevin.tian@intel.com>, 2010-07-10
-Index: dbus-1.2.14/bus/Makefile.am
-===================================================================
---- dbus-1.2.14.orig/bus/Makefile.am	2009-04-17 20:45:29.000000000 +0100
-+++ dbus-1.2.14/bus/Makefile.am	2009-11-13 09:47:24.000000000 +0000
-@@ -149,7 +149,7 @@ endif
- 
- ## we use noinst_PROGRAMS not check_PROGRAMS so that we build 
- ## even when not doing "make check"
--noinst_PROGRAMS=$(TESTS) dbus-daemon dbus-daemon-launch-helper-test dbus-daemon-launch-helper
-+noinst_PROGRAMS=$(TESTS) dbus-daemon-launch-helper-test
- 
- bus_test_system_SOURCES=			\
- 	$(XML_SOURCES)				\
-@@ -171,34 +171,22 @@ bus_test_SOURCES=				\
- bus_test_LDADD=$(top_builddir)/dbus/libdbus-convenience.la $(DBUS_BUS_LIBS)
- bus_test_LDFLAGS=@R_DYNAMIC_LDFLAG@
- 
-+dbusdaemondir = $(DBUS_DAEMONDIR)
-+dbusdaemon_PROGRAMS = dbus-daemon
-+
-+libexec_PROGRAMS = dbus-daemon-launch-helper
-+
- ## mop up the gcov files
- clean-local:
- 	/bin/rm *.bb *.bbg *.da *.gcov || true
- 
--uninstall-hook:
--	rm -f $(DESTDIR)$(DBUS_DAEMONDIR)/dbus-daemon
--	rm -f $(DESTDIR)$(libexecdir)/dbus-daemon-launch-helper
--
- install-data-hook:
--	if test '!' -d $(DESTDIR)$(DBUS_DAEMONDIR); then \
--		$(mkinstalldirs) $(DESTDIR)$(DBUS_DAEMONDIR); \
--		chmod 755 $(DESTDIR)$(DBUS_DAEMONDIR); \
--	fi
--	$(INSTALL_PROGRAM) dbus-daemon $(DESTDIR)$(DBUS_DAEMONDIR)
- 	$(mkinstalldirs) $(DESTDIR)$(localstatedir)/run/dbus
- 	$(mkinstalldirs) $(DESTDIR)$(configdir)/system.d
- 	$(mkinstalldirs) $(DESTDIR)$(configdir)/session.d
- 	$(mkinstalldirs) $(DESTDIR)$(datadir)/dbus-1/services
- 	$(mkinstalldirs) $(DESTDIR)$(datadir)/dbus-1/system-services
- 	$(mkinstalldirs) $(DESTDIR)$(libexecdir)/dbus-1
--	$(INSTALL_PROGRAM) dbus-daemon-launch-helper $(DESTDIR)$(libexecdir)
--	if test `id -u` -eq 0; then \
--		chown root:$(DBUS_USER) $(DESTDIR)$(libexecdir)/dbus-daemon-launch-helper; \
--		chmod 4750 $(DESTDIR)$(libexecdir)/dbus-daemon-launch-helper; \
--	else \
--		echo "Not installing $(DESTDIR)$(libexecdir)/dbus-daemon-launch-helper binary setuid!"; \
--		echo "You'll need to manually set permissions to root:$(DBUS_USER) and permissions 4750"; \
--	fi
- 
- #### Init scripts fun
- SCRIPT_IN_FILES=messagebus.in \
diff --git a/meta/recipes-core/dbus/dbus-1.2.24/dbus-1.init b/meta/recipes-core/dbus/dbus-1.4.0/dbus-1.init
similarity index 100%
rename from meta/recipes-core/dbus/dbus-1.2.24/dbus-1.init
rename to meta/recipes-core/dbus/dbus-1.4.0/dbus-1.init
diff --git a/meta/recipes-core/dbus/dbus-1.2.24/tmpdir.patch b/meta/recipes-core/dbus/dbus-1.4.0/tmpdir.patch
similarity index 100%
rename from meta/recipes-core/dbus/dbus-1.2.24/tmpdir.patch
rename to meta/recipes-core/dbus/dbus-1.4.0/tmpdir.patch
diff --git a/meta/recipes-core/dbus/dbus.inc b/meta/recipes-core/dbus/dbus.inc
index daf5960..402cf13 100644
--- a/meta/recipes-core/dbus/dbus.inc
+++ b/meta/recipes-core/dbus/dbus.inc
@@ -9,7 +9,6 @@ DEPENDS = "expat glib-2.0 virtual/libintl virtual/libx11 libsm"
 
 SRC_URI = "http://dbus.freedesktop.org/releases/dbus/dbus-${PV}.tar.gz \
            file://tmpdir.patch; \
-           file://fix-install-daemon.patch; \
            file://dbus-1.init"
 
 inherit autotools pkgconfig gettext update-rc.d
diff --git a/meta/recipes-core/dbus/dbus_1.2.24.bb b/meta/recipes-core/dbus/dbus_1.4.0.bb
similarity index 64%
rename from meta/recipes-core/dbus/dbus_1.2.24.bb
rename to meta/recipes-core/dbus/dbus_1.4.0.bb
index 8e3e329..f331b14 100644
--- a/meta/recipes-core/dbus/dbus_1.2.24.bb
+++ b/meta/recipes-core/dbus/dbus_1.4.0.bb
@@ -1,3 +1,3 @@
 include dbus.inc
 
-PR = "r1"
+PR = "r0"
-- 
1.7.0


