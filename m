Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59F294C80049
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 20:09:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2011 18:09:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,209,1297065600"; d="scan'208";a="660498653"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2011 18:09:36 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Feb 2011 10:14:33 +0800
Message-Id: <1470e913b8711734d901eae24782b8a27a8c8848.1298426322.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1298426322.git.ke.yu@intel.com>
References: <cover.1298426322.git.ke.yu@intel.com>
Subject: [PATCH 2/2] xserver-nodm-init: add rootless-x support
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
X-List-Received-Date: Wed, 23 Feb 2011 02:09:37 -0000

most rootless X work are already done in the kernel, xserver and
graphics driver, this patches add the the remaining userspace setting:

- create /etc/X11/Xusername to set rootless X user
- add rootless X user to group video, tty to access /dev/tty[0-4]
  and /dev/dri/card0
- grant rootless X user access right to /dev/input/*, /var/log

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../x11-common/xserver-nodm-init.bb                |   22 +++++++++++++++++++-
 .../x11-common/xserver-nodm-init/Xusername         |    1 +
 .../x11-common/xserver-nodm-init/xserver-nodm      |    4 +++
 3 files changed, 26 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername

diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init.bb b/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
index 03a6ca3..a93acc9 100644
--- a/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
@@ -3,10 +3,11 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 SECTION = "x11"
 PRIORITY = "optional"
-PR = "r23"
+PR = "r24"
 RDEPENDS_${PN} = "dbus-wait sudo"
 
 SRC_URI = "file://xserver-nodm \
+           file://Xusername \
            file://gplv2-license.patch"
 
 S = ${WORKDIR}
@@ -17,6 +18,25 @@ do_install() {
     install -d ${D}/etc
     install -d ${D}/etc/init.d
     install xserver-nodm ${D}/etc/init.d
+    if [ "${ROOTLESS_X}" = "1" ] ; then
+        install -d ${D}/etc/X11
+        install Xusername ${D}/etc/X11
+    fi
+}
+
+pkg_postinst_${PN} () {
+    if [ "x$D" != "x" ] ; then
+        exit 1
+    fi
+
+    if [ -f /etc/X11/Xusername ]; then
+        # create the rootless X user, and add user to group tty, video
+        username=`cat /etc/X11/Xusername`
+        adduser --disabled-password $username
+        # FIXME: use addgroup if busybox addgroup is ready
+        sed -i -e "s/^video:.*/&${username}/g" /etc/group
+        sed -i -e "s/^tty:.*/&${username}/g" /etc/group
+    fi
 }
 
 inherit update-rc.d
diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername b/meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername
new file mode 100644
index 0000000..7060e5e
--- /dev/null
+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername
@@ -0,0 +1 @@
+xuser
diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm b/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm
index 69ea949..d8c4ba0 100755
--- a/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm
+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init/xserver-nodm
@@ -30,6 +30,10 @@ case "$1" in
        echo "Starting Xserver"
        if [ -f /etc/X11/Xusername ]; then
            username=`cat /etc/X11/Xusername`
+           # setting for rootless X
+           chmod o+w /var/log
+           chmod g+r /dev/tty[0-3]
+           chmod o+rw /dev/input/*
        fi
        # Using sudo -i here has the nice side effect of making sire
        # HOME, USER and other previously problematic variables
-- 
1.7.0.4


