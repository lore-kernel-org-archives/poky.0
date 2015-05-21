Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D1EFE009EB; Thu, 21 May 2015 07:39:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FAD2E00985
	for <poky@yoctoproject.org>; Thu, 21 May 2015 07:38:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 21 May 2015 07:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,469,1427785200"; d="scan'208";a="713688892"
Received: from linux-8hqz.fi.intel.com (HELO linux-8hqz.site.fi.intel.com)
	([10.237.68.142])
	by fmsmga001.fm.intel.com with ESMTP; 21 May 2015 07:38:54 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 21 May 2015 17:39:29 +0300
Message-Id: <1432219169-7088-1-git-send-email-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] distro: remove obsolete 0.10 packages from distro configuration
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
X-List-Received-Date: Thu, 21 May 2015 14:39:38 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc      | 14 --------------
 meta-yocto/conf/distro/include/maintainers.inc       | 13 -------------
 meta-yocto/conf/distro/include/upstream_tracking.inc |  4 ----
 3 files changed, 31 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 4c19076..0f8ed55 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -146,25 +146,14 @@ DISTRO_PN_ALIAS_pn-gptfdisk = "Fedora=gdisk Ubuntu=gdisk"
 DISTRO_PN_ALIAS_pn-grub-efi = "Debian=grub-efi Fedora=grub2-efi"
 DISTRO_PN_ALIAS_pn-grub-efi-i586 = "Debian=grub-efi Fedora=grub2-efi"
 DISTRO_PN_ALIAS_pn-grub-efi-x86-64 = "Debian=grub-efi Fedora=grub2-efi"
-DISTRO_PN_ALIAS_pn-gst-ffmpeg = "Mandriva=gstreamer0.10-ffmpeg Debian=gstreamer0.10-ffmpeg"
-DISTRO_PN_ALIAS_pn-gst-fluendo-mp3 = "Debian=gstreamer0.10-fluendo-mp3 Ubuntu=gstreamer0.10-fluendo-mp3"
-DISTRO_PN_ALIAS_pn-gst-fluendo-mpegdemux = "Ubuntu=gstreamer0.10-fluendo-mpegdemux Debian=gstreamer0.10-fluendo-mpegdemux"
-DISTRO_PN_ALIAS_pn-gst-meta-base = "Meego=gstreamer Fedora=gstreamer OpenSuSE=gstreamer Ubuntu=gstreamer0.10 Mandriva=gstreamer0.10 Debian=gstreamer0.10"
-DISTRO_PN_ALIAS_pn-gst-openmax = "OSPDT upstream=http://cgit.freedesktop.org/gstreamer/gst-openmax"
 DISTRO_PN_ALIAS_pn-gst-player = "Ubuntu=gst-player Fedora=gstreamer-player"
 DISTRO_PN_ALIAS_pn-gst-plugin-bluetooth = "Ubuntu=libgstreamer-plugins-base Fedora=gstreamer-plugins-base"
-DISTRO_PN_ALIAS_pn-gst-plugins-bad = "Fedora=gstreamer-plugins-bad-free OpenSuSE=gstreamer-plugins-bad Debian=gst-plugins-bad0.10"
-DISTRO_PN_ALIAS_pn-gst-plugins-base = "Meego=gst-plugins-base Fedora=gstreamer-plugins-base OpenSuSE=gstreamer-plugins-base Ubuntu=gst-plugins-base0.10 Mandriva=gstreamer0.10-plugins-base Debian=gst-plugins-base0.10"
-DISTRO_PN_ALIAS_pn-gst-plugins-gl = "Debian=gstreamer0.10-plugins-gl OpenSuSE=gstreamer-0_10-plugins-gl"
-DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
-DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
 DISTRO_PN_ALIAS_pn-gstreamer1.0 = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-meta-base = "Meego=gstreamer Fedora=gstreamer OpenSuSE=gstreamer Ubuntu=gstreamer0.10"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-bad = "Debian=gstreamer1.0-plugins-bad Ubuntu=gstreamer1.0-plugins-bad"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base = "Debian=gstreamer1.0-plugins-base Ubuntu=gstreamer1.0-plugins-base"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-good = "Debian=gstreamer1.0-plugins-good Ubuntu=gstreamer1.0-plugins-bad"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-rtsp-server = "Ubuntu=gstreamer0.10-rtsp Fedora=gstreamer-rtsp"
-DISTRO_PN_ALIAS_pn-gstreamer = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
 DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2 Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
 DISTRO_PN_ALIAS_pn-gtk+3 = "Ubuntu=gtk+3.0 Debian=gtk+3.0 Fedora=gtk3"
 DISTRO_PN_ALIAS_pn-gtk-doc-stub = "Fedora=gtk-doc Ubuntu=gtk-doc"
@@ -402,7 +391,6 @@ DISTRO_PN_ALIAS_pn-python-argparse = "Fedora=python-argparse OpenSuSE=python-arg
 DISTRO_PN_ALIAS_pn-python-dbus = "Ubuntu=python-dbus Debian=python-dbus Mandriva=python-dbus"
 DISTRO_PN_ALIAS_pn-python-distribute = "Opensuse=python-setuptools Fedora=python-setuptools"
 DISTRO_PN_ALIAS_pn-python-git = "Debian=python-git Fedora=GitPython"
-DISTRO_PN_ALIAS_pn-python-gst = "OpenSuSE=python-gstreamer Ubuntu=gst0.10-python Debian=gst0.10-python"
 DISTRO_PN_ALIAS_pn-python-mako = "Fedora=python-mako Opensuse=python-Mako"
 DISTRO_PN_ALIAS_pn-python-pycairo = "Meego=pycairo Fedora=pycairo Ubuntu=pycairo Debian=pycairo"
 DISTRO_PN_ALIAS_pn-python-pycurl = "Debian=python-pycurl Ubuntu=python-pycurl"
@@ -424,8 +412,6 @@ DISTRO_PN_ALIAS_pn-qt4-graphics-system = "OE-Core"
 DISTRO_PN_ALIAS_pn-qt4-tools = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
 DISTRO_PN_ALIAS_pn-qt4-x11-free = "Ubuntu=qt-x11-free Debian=qt-x11-free"
 DISTRO_PN_ALIAS_pn-qt-demo-init = "OE-Core"
-DISTRO_PN_ALIAS_pn-qt-mobility-embedded = "Ubuntu=qtmobility-dev Debian=qtmobility-dev"
-DISTRO_PN_ALIAS_pn-qt-mobility-x11 = "Ubuntu=qtmobility-dev Debian=qtmobility-dev"
 DISTRO_PN_ALIAS_pn-quicky = "OSPDT"
 DISTRO_PN_ALIAS_pn-randrproto = "Meego=xorg-x11-proto-randrproto"
 DISTRO_PN_ALIAS_pn-readline = "Fedora=readline Debian=readline-common"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index e1b2f0d..fad7fac 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -209,16 +209,6 @@ RECIPE_MAINTAINER_pn-grep = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-groff = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-grub = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gsettings-desktop-schemas = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-gst-ffmpeg = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-fluendo-mp3 = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-fluendo-mpegdemux = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-meta-base = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-openmax = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-plugins-bad = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-plugins-base = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-plugins-good = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gst-plugins-ugly = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gstreamer = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0-libav = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-bad = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -567,7 +557,6 @@ RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfo
 RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-git = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-python-gitdb = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-python-gst = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-imaging = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-mako = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-python-nose = "Khem Raj <raj.khem@gmail.com>"
@@ -592,8 +581,6 @@ RECIPE_MAINTAINER_pn-qt4-graphics-system = "Paul Eggleton <paul.eggleton@linux.i
 RECIPE_MAINTAINER_pn-qt4-native = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qt4-x11-free = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qt-demo-init = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qt-mobility-embedded = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qt-mobility-x11 = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-quicky = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-quilt = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-quota = "Cristian Iorga <cristian.iorga@intel.com>"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 1fd04a2..0292be1 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -63,10 +63,6 @@ RECIPE_NO_UPDATE_REASON_pn-gnome-keyring = "waiting for the sato gtk3 port"
 RECIPE_NO_UPDATE_REASON_pn-gobject_introspection = "Does not cross-compile"
 RECIPE_NO_UPDATE_REASON_pn-groff = "1.18.1.4 is latest GPLv2 Version no 1.21"
 RECIPE_NO_UPDATE_REASON_pn-bash = "The latest version in yocto is 4.3.30"
-RECIPE_NO_UPDATE_REASON_pn-gst-plugins-base = "not compatible with gst-fluendo 0.10.x"
-RECIPE_NO_UPDATE_REASON_pn-gst-plugins-bad = "not compatible with gst-fluendo 0.10.x"
-RECIPE_NO_UPDATE_REASON_pn-gst-plugins-good = "not compatible with gst-fluendo 0.10.x"
-RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
 RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
 RECIPE_NO_UPDATE_REASON_pn-gtk-engines = "2.91.1 is a 3.0 beta release"
 RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
-- 
2.1.4


