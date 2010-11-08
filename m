Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56B964C810FE
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 15:01:24 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L1KMX027851;
	Mon, 8 Nov 2010 13:01:22 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:01:29 -0500
Message-Id: <11883484392ff34bc54a0e9a86c8877bb9eb74e4.1289249154.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
References: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
References: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 2/4] tslib: 32bit big endian support
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
X-List-Received-Date: Mon, 08 Nov 2010 21:01:24 -0000

From: J. Aaron Gamble <john.gamble@windriver.com>

Fixes [BUGID #394]

patch added from: https://launchpad.net/ubuntu/+source/tslib/1.0-7

Enables wacom tablet/touchscreen support on qemumips

Signed-off-by: J. Aaron Gamble <john.gamble@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../formfactor/files/qemumips/machconfig           |    4 +-
 .../tslib/tslib/32bitBE-support.patch              |   52 ++++++++++++++++++++
 meta/recipes-graphics/tslib/tslib_1.0.bb           |    4 +-
 3 files changed, 57 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-graphics/tslib/tslib/32bitBE-support.patch

diff --git a/meta/recipes-bsp/formfactor/files/qemumips/machconfig b/meta/recipes-bsp/formfactor/files/qemumips/machconfig
index 3f2646b..56777b6 100755
--- a/meta/recipes-bsp/formfactor/files/qemumips/machconfig
+++ b/meta/recipes-bsp/formfactor/files/qemumips/machconfig
@@ -1,5 +1,5 @@
-HAVE_TOUCHSCREEN=0
-HAVE_KEYBOARD=0
+HAVE_TOUCHSCREEN=1
+HAVE_KEYBOARD=1
  
 DISPLAY_CAN_ROTATE=0
 DISPLAY_ORIENTATION=0
diff --git a/meta/recipes-graphics/tslib/tslib/32bitBE-support.patch b/meta/recipes-graphics/tslib/tslib/32bitBE-support.patch
new file mode 100644
index 0000000..3262f16
--- /dev/null
+++ b/meta/recipes-graphics/tslib/tslib/32bitBE-support.patch
@@ -0,0 +1,52 @@
+#! /bin/sh /usr/share/dpatch/dpatch-run
+## 030-32bitBE-support.dpatch by Neil Williams <codehelp@debian.org>
+##
+## All lines beginning with `## DP:' are a description of the patch.
+## DP: See bug #496759 - being tested upstream for 32bit BE devices
+
+@DPATCH@
+diff -urNad tslib-1.0~/plugins/input-raw.c tslib-1.0/plugins/input-raw.c
+--- tslib-1.0~/plugins/input-raw.c	2008-12-09 10:56:47.000000000 +0000
++++ tslib-1.0/plugins/input-raw.c	2008-12-09 11:05:41.000000000 +0000
+@@ -44,25 +44,33 @@
+ 	int	using_syn;
+ };
+ 
++#define BITS_PER_LONG	(sizeof(long) * 8)
++#ifndef EV_CNT
++#define EV_CNT	(EV_MAX+1)
++#endif
++#ifndef ABS_CNT
++#define ABS_CNT	(ABS_MAX+1)
++#endif
++
+ static int check_fd(struct tslib_input *i)
+ {
+ 	struct tsdev *ts = i->module.dev;
+ 	int version;
+-	u_int32_t bit;
+-	u_int64_t absbit;
++	unsigned long bit[EV_CNT / BITS_PER_LONG + 1];
++	unsigned long absbit[ABS_MAX / BITS_PER_LONG + 1];
+ 
+ 	if (! ((ioctl(ts->fd, EVIOCGVERSION, &version) >= 0) &&
+ 		(version == EV_VERSION) &&
+-		(ioctl(ts->fd, EVIOCGBIT(0, sizeof(bit) * 8), &bit) >= 0) &&
+-		(bit & (1 << EV_ABS)) &&
+-		(ioctl(ts->fd, EVIOCGBIT(EV_ABS, sizeof(absbit) * 8), &absbit) >= 0) &&
+-		(absbit & (1 << ABS_X)) &&
+-		(absbit & (1 << ABS_Y)) && (absbit & (1 << ABS_PRESSURE)))) {
++		(ioctl(ts->fd, EVIOCGBIT(0, sizeof(bit)), bit) >= 0) &&
++		(bit[0] & (1 << EV_ABS)) &&
++		(ioctl(ts->fd, EVIOCGBIT(EV_ABS, sizeof(absbit)), absbit) >= 0) &&
++		(absbit[0] & (1 << ABS_X)) &&
++		(absbit[0] & (1 << ABS_Y)) && (absbit[0] & (1 << ABS_PRESSURE)))) {
+ 		fprintf(stderr, "selected device is not a touchscreen I understand\n");
+ 		return -1;
+ 	}
+ 
+-	if (bit & (1 << EV_SYN))
++	if (bit[0] & (1 << EV_SYN))
+ 		i->using_syn = 1;
+ 
+ 	return 0;
diff --git a/meta/recipes-graphics/tslib/tslib_1.0.bb b/meta/recipes-graphics/tslib/tslib_1.0.bb
index 12c0ace..8db90d9 100644
--- a/meta/recipes-graphics/tslib/tslib_1.0.bb
+++ b/meta/recipes-graphics/tslib/tslib_1.0.bb
@@ -6,7 +6,7 @@ SECTION = "base"
 LICENSE = "LGPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f30a9716ef3762e3467a2f62bf790f0a"
 
-PR = "r15"
+PR = "r16"
 
 SRC_URI = "http://download.berlios.de/tslib/tslib-${PV}.tar.bz2 \
            file://fix_version.patch;patch=1 \
@@ -16,6 +16,8 @@ SRC_URI = "http://download.berlios.de/tslib/tslib-${PV}.tar.bz2 \
            file://tslib.sh"
 SRC_URI_append_mnci += " file://devfs.patch;patch=1"
 SRC_URI_append_mnci += " file://event1.patch;patch=1"
+SRC_URI_append_qemumips += " file://32bitBE-support.patch;patch=1"
+
 
 inherit autotools pkgconfig
 
-- 
1.7.0.4


