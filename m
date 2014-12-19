Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3809CE00B68; Thu, 18 Dec 2014 16:11:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C716E00B49
	for <poky@yoctoproject.org>; Thu, 18 Dec 2014 16:10:57 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Dec 2014 16:10:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,604,1413270000"; d="scan'208";a="640011490"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.4.60])
	by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2014 16:10:53 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 18 Dec 2014 18:11:16 -0600
Message-Id: <1418947876-19114-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH] meta-yocto/conf/distro/include: Update package_regex'es and upstream info.
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
X-List-Received-Date: Fri, 19 Dec 2014 00:11:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update package_regex.inc in order to match upstream versions, remove unnecesary
records because bb.fetch2 latest_versionstring  method match this cases.
Update upstream_info.inc remove un-updated records.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc   |  13 +-
 .../conf/distro/include/upstream_tracking.inc      | 148 +++++----------------
 2 files changed, 42 insertions(+), 119 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 9bf77e7..119849c 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -175,6 +175,7 @@ REGEX_pn-libpcre = "/projects/pcre/files/pcre/(?P<pver>((\d+[\.\-_]*)+))/"
 REGEX_URI_pn-libpcre-native = "http://sourceforge.net/projects/pcre/files/pcre/"
 REGEX_pn-libpcre-native = "/projects/pcre/files/pcre/(?P<pver>((\d+[\.\-_]*)+))/"
 REGEX_URI_pn-libpfm4 = "http://sourceforge.net/projects/perfmon2/files/libpfm4/"
+REGEX_pn-libpfm4 = "/projects/perfmon2/files/libpfm4/libpfm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/"
 REGEX_URI_pn-libpng = "http://sourceforge.net/projects/libpng/files/libpng16/"
 REGEX_pn-libpng = "/projects/libpng/files/libpng16/(?P<pver>((\d+[\.\-_]*)+))/"
 REGEX_URI_pn-libpng-native = "ftp://ftp.simplesystems.org/pub/libpng/png/src/"
@@ -247,8 +248,7 @@ REGEX_pn-oprofile = "/projects/oprofile/files/oprofile/oprofile-(?P<pver>((\d+[\
 REGEX_URI_pn-ossp-uuid = "http://code.google.com/p/gnome-build-stage-1/downloads/list"
 REGEX_URI_pn-pcmanfm = "http://sourceforge.net/projects/pcmanfm/files/PCManFM%20%2B%20Libfm%20%28tarball%20release%29/PCManFM/"
 REGEX_pn-pcmanfm = "http://sourceforge.net/projects/pcmanfm/files/PCManFM.20.2B.20Libfm.20.28tarball.20release.29/PCManFM/pcmanfm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download"
-REGEX_URI_pn-procps = "http://procps.sourceforge.net/download.html"
-REGEX_pn-procps = "procps\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz"
+REGEX_pn-procps = "procps\-ng\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.(g|x)z"
 REGEX_URI_pn-powertop = "https://01.org/powertop/downloads"
 REGEX_URI_pn-pptp-linux = "http://sourceforge.net/projects/pptpclient/files/pptp/"
 REGEX_pn-pptp-linux = "/projects/pptpclient/files/pptp/pptp-(?P<pver>((\d+[\.\-_]*)+))/"
@@ -331,7 +331,7 @@ REGEX_pn-vsftpd = "https://security.appspot.com/downloads/vsftpd-(?P<pver>((\d+[
 REGEX_URI_pn-watchdog = "http://sourceforge.net/projects/watchdog/files/watchdog/"
 REGEX_pn-watchdog = "/projects/watchdog/files/watchdog/(?P<pver>((\d+[\.\-_]*)+))/"
 REGEX_URI_pn-wireless-tools = "http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html"
-REGEX_pn-wireless-tools = "wireless_tools\.(?P<pver>(\d+))\.tar\.gz"
+REGEX_pn-wireless-tools = "wireless_tools\.(?P<pver>(\d+)(\..*|))\.tar\.gz"
 REGEX_URI_pn-x11vnc = "http://sourceforge.net/projects/libvncserver/files/x11vnc/"
 REGEX_pn-x11vnc = "/projects/libvncserver/files/x11vnc/(?P<pver>((\d+[\.\-_]*)+))/"
 REGEX_pn-xdg-utils = "xdg\-utils\-(?P<pver>((\d+[\.\-_]*)+))\.(tar\.gz|tgz)"
@@ -367,9 +367,16 @@ REGEX_URI_pn-midori="http://midori-browser.org/download/source/"
 REGEX_pn-icu="(?P<pver>((\d+[\.\-_]*)+))"
 REGEX_URI_pn-icu="http://download.icu-project.org/files/icu4c/"
 REGEX_URI_pn-pcmciautils="http://mirror.linux.org.au/linux/utils/kernel/pcmcia/"
+REGEX_URI_pn-man="http://www.ibiblio.org/pub/Linux/apps/doctools/man/"
 
 # Regex used to parse tags and extract version
 GITTAGREGEX_pn-build-appliance-image = "(?P<pver>(([0-9][\.|_]?)+[0-9]))"
 GITTAGREGEX_pn-chkconfig-alternatives-native = "chkconfig\-(?P<pver>((\d+[\.\-_]*)+))"
 GITTAGREGEX_pn-remake = "(?P<pver>(\d+\.(\d+\.)*\d*(\+dbg\d+(\.\d+)*)*))"
 GITTAGREGEX_pn-xf86-video-omap = "(?P<pver>(\d+\.(\d\.?)*))"
+GITTAGREGEX_pn-linux-yocto = "(?P<pver>(\d+\.(\d\.?)*))"
+GITTAGREGEX_pn-linux-yocto-dev = "(?P<pver>(\d+\.(\d\.?)*))"
+GITTAGREGEX_pn-uclibc = "(?P<pver>(\d+\.(\d\.?)*))"
+GITTAGREGEX_pn-uclibc-initial = "(?P<pver>(\d+\.(\d\.?)*))"
+GITTAGREGEX_pn-mesa = "(?P<pver>(\d+\.(\d\.?)*))"
+GITTAGREGEX_pn-glibc = "(?P<pver>(\d+\.(\d\.?)*))"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d2aba6f..923fa1b 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -24,14 +24,6 @@
 #
 RECIPE_UPSTREAM_VERSION_pn-adt-installer = "1.1"
 CHECK_DATE_pn-adt-installer = "Sep 11, 2012"
-RECIPE_UPSTREAM_DATE_pn-avahi-ui = "Oct 01, 2010"
-RECIPE_UPSTREAM_VERSION_pn-avahi = "0.6.31"
-RECIPE_UPSTREAM_DATE_pn-avahi = "Oct 01, 2010"
-RECIPE_UPSTREAM_VERSION_pn-bash = "4.2"
-RECIPE_UPSTREAM_DATE_pn-bash = "Dec 01, 2009"
-RECIPE_UPSTREAM_VERSION_pn-bc = "1.06"
-CHECK_DATA_pn-bc = "Jul 27, 2012"
-RECIPE_UPSTREAM_DATE_pn-bc = "Nov 01, 2000"
 RECIPE_UPSTREAM_VERSION_pn-bdwgc = "gc-7.2d"
 CHECK_DATE_pn-bdwgc = "Aug 27, 2012"
 RECIPE_NO_UPDATE_REASON_pn-bluez4 = "BlueZ 5.x is not backward-compatible; components that interact with bluez not updated"
@@ -40,34 +32,10 @@ RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
 RECIPE_UPSTREAM_VERSION_pn-clutter = "1.10.0"
 RECIPE_UPSTREAM_DATE_pn-clutter = "Mar 22, 2012"
 CHECK_DATE_pn-clutter = "Aug 28, 2012"
-RECIPE_UPSTREAM_VERSION_pn-core-image-minimal = "1.0"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
-RECIPE_UPSTREAM_VERSION_pn-cups = "1.6.2"
-RECIPE_UPSTREAM_DATE_pn-cups = "Mar 18, 2013"
-CHECK_DATE_pn-cups = "Jun 11, 2013"
 RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
 RECIPE_NO_UPDATE_REASON_pn-dbus = "D-BUS 1.9.x is the development version, not stable."
-RECIPE_NO_UPDATE_REASON_pn-docbook-sgml-dtd-3.1-native = "PRS Reports Incorrectly"
-RECIPE_NO_UPDATE_REASON_pn-docbook-sgml-dtd-4.1-native = "PRS Reports Incorrectly"
-RECIPE_NO_UPDATE_REASON_pn-docbook-sgml-dtd-4.5-native = "PRS Reports Incorrectly"
-RECIPE_UPSTREAM_VERSION_pn-eee-acpi-scripts = "1.1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2"
-RECIPE_UPSTREAM_DATE_pn-eee-acpi-scripts = "Oct 3, 2011"
-CHECK_DATE_pn-eee-acpi-scripts = "Aug 28, 2012"
-RECIPE_UPSTREAM_VERSION_pn-formfactor = "0.0"
-RECIPE_UPSTREAM_DATE_pn-formfactor = "n/a"
-RECIPE_UPSTREAM_VERSION_pn-fstests="0.0+svnr426"
-CHECK_DATE_pn-fstests = "Jul 06, 2011"
-RECIPE_UPSTREAM_VERSION_pn-gaku="0.0+svnr399"
 RECIPE_NO_UPDATE_REASON_pn-gawk = "Version 4.1.0 requires Automake 1.13, but have 1.12.6"
-RECIPE_UPSTREAM_DATE_pn-gaku="Jul 03, 2008"
-CHECK_DATE_pn-gaku = "Aug 29, 2012"
-RECIPE_UPSTREAM_VERSION_pn-gdk-pixbuf = "2.27.2"
-RECIPE_UPSTREAM_DATE_pn-gdk-pixbuf = "Mar 3, 2013"
-CHECK_DATE_pn-gdk-pixbuf = "Mar 5, 2013"
-RECIPE_NO_UPDATE_REASON_pn-gdk-pixbuf = "2.27.2 is unstable"
-RECIPE_UPSTREAM_VERSION_pn-glibc = "2.11.2"
-RECIPE_UPSTREAM_DATE_pn-glibc = "May 01, 2010"
-RECIPE_NO_UPDATE_REASON_pn-glibc = "two glibc plugins are based on 2.10.1"
 RECIPE_NO_UPDATE_REASON_pn-glib-networking = "Pending Glib-2.0 Update"
 RECIPE_UPSTREAM_VERSION_pn-gnome-desktop = "3.7.90"
 RECIPE_UPSTREAM_DATE_pn-gnome-desktop = "Feb 19, 2013"
@@ -83,66 +51,35 @@ CHECK_DATE_pn-gnome-keyring = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-gnome-keyring = "waiting for the sato gtk3 port"
 RECIPE_NO_UPDATE_REASON_pn-gobject_introspection = "Does not cross-compile"
 RECIPE_NO_UPDATE_REASON_pn-groff = "1.18.1.4 is latest GPLv2 Version no 1.21"
-RECIPE_NO_UPDATE_REASON_pn-grub="grub2 is a different thing"
 RECIPE_UPSTREAM_DATE_pn-gst-meta-base="n/a"
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-base = "not compatible with gst-fluendo 0.10.x"
-RECIPE_NO_UPDATE_REASON_pn-gst-ffmpeg = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-bad = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-good = "not compatible with gst-fluendo 0.10.x"
-RECIPE_NO_UPDATE_REASON_pn-gst-plugins-ugly = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
 RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
-RECIPE_NO_UPDATE_REASON_pn-gtk-doc-stub = "PRS Reports Incorrectly"
 RECIPE_UPSTREAM_VERSION_pn-gtk-engines = "2.91.1"
 RECIPE_UPSTREAM_DATE_pn-gtk-engines = "Oct 9, 2010"
 CHECK_DATE_pn-gtk-engines = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-gtk-engines = "2.91.1 is a 3.0 beta release"
-RECIPE_UPSTREAM_VERSION_pn-icu = "4.8.1.1"
-RECIPE_UPSTREAM_DATE_pn-icu = "Oct 10, 2011"
-CHECK_DATE_pn-icu = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-initscripts = "9.40"
 RECIPE_UPSTREAM_DATE_pn-initscripts = "Aug 06, 2012"
 CHECK_DATE_pn-initscripts = "Aug 29, 2012"
-RECIPE_UPSTREAM_VERSION_pn-inputproto = "2.2.99.1"
-RECIPE_UPSTREAM_DATE_pn-inputproto = "Jan 5, 2013"
-CHECK_DATE_pn-inputproto = "Mar 5, 2013"
-RECIPE_NO_UPDATE_REASON_pn-inputproto = "2.2.99.1 is unstable"
 RECIPE_UPSTREAM_VERSION_pn-jpeg = "9"
 RECIPE_UPSTREAM_DATE_pn-jpeg = "Jan 13, 2013"
 CHECK_DATE_pn-jpeg = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
-RECIPE_NO_UPDATE_REASON_pn-kconfig-frontends = "PRS Reports Incorrectly"
 RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
-RECIPE_UPSTREAM_VERSION_pn-keymaps = "1.0"
-RECIPE_UPSTREAM_DATE_pn-keymaps = "n/a"
-RECIPE_UPSTREAM_VERSION_pn-kmod = "9"
-RECIPE_UPSTREAM_DATE_pn-kmod = "Jun 19, 2012"
-CHECK_DATE_pn-kmod = "Jul 27, 2012"
-CHECK_DATE_pn-latencytop = "Jul 30, 2014"
 RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.00.0 - fontforge package required "
 RECIPE_UPSTREAM_VERSION_pn-libgnome-keyring = "3.7.91"
 RECIPE_UPSTREAM_DATE_pn-libgnome-keyring = "Mar 4, 2013"
 CHECK_DATE_pn-libgnome-keyring = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-libgnome-keyring = "waiting for the sato gtk3 port"
-RECIPE_UPSTREAM_VERSION_pn-libiconv = "1.14"
-RECIPE_UPSTREAM_DATE_pn-libiconv = "Aug 07, 2011"
-CHECK_DATE_pn-libiconv = "Aug 30, 2012"
 RECIPE_NO_UPDATE_REASON_pn-libnl = "libnl-3.2.2 is incompatible with libnl2, so no Upgrade"
 RECIPE_UPSTREAM_VERSION_pn-libsoup = "2.41.90"
-RECIPE_UPSTREAM_VERSION_pn-libpng = "1.6.6"
-RECIPE_UPSTREAM_DATE_pn-libpng = "Sep 16, 2013"
-CHECK_DATE_pn-libpng = "Oct 02, 2013"
-RECIPE_UPSTREAM_VERSION_pn-libpng12 = "1.2.50"
-RECIPE_UPSTREAM_DATE_pn-libpng12 = "Jul 10, 2012"
-CHECK_DATE_pn-libpng12 = "Oct 02, 2013"
 RECIPE_UPSTREAM_DATE_pn-libsoup = "Feb 19, 2013"
 CHECK_DATE_pn-libsoup = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-libsoup = "2.41.90 is unstable"
-RECIPE_NO_UPDATE_REASON_pn-libtheora = "1.1.1 is latest stable release not 1.2.0alpha1"
 RECIPE_NO_UPDATE_REASON_pn-libunique = "Do not upgrade to version: 2.91.4 because it requires gtk+ >= 2.90.0 and the stable version of gtk+ used by poky is 2.20.1"
-RECIPE_UPSTREAM_VERSION_pn-liburcu = "0.7.0"
-RECIPE_UPSTREAM_DATE_pn-liburcu = "May 25, 2012"
-CHECK_DATE_pn-liburcu = "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libusb = "1.0.9"
 RECIPE_UPSTREAM_DATE_pn-libusb = "Apr 20, 2012"
 CHECK_DATE_pn-libusb = "Aug 30, 2012"
@@ -150,73 +87,35 @@ RECIPE_UPSTREAM_DATE_pn-linuxdoc-tools-native = "Nov 22, 2009"
 RECIPE_UPSTREAM_VERSION_pn-linuxdoc-tools-native = "0.9.66"
 CHECK_DATE_pn-linuxdoc-tools-native = "Aug 31, 2012"
 RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
-RECIPE_UPSTREAM_VERSION_pn-lsbtest = "1.0"
-CHECK_DATE_pn-lsof = "Jul 30, 2014"
-RECIPE_UPSTREAM_VERSION_pn-lz4 = "122"
+CHECK_DATE_pn-lsof = "Dec 16, 2014"
+RECIPE_UPSTREAM_VERSION_pn-lz4 = "r123"
 RECIPE_UPSTREAM_DATE_pn-lz4 = "Aug 28, 2014"
 CHECK_DATE_pn-lz4 = "Aug 30, 2014"
-RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
-RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
-RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-CHECK_DATE_pn-minicom = "Oct 22, 2013"
 RECIPE_UPSTREAM_DATE_pn-module-init-tools = "Jun 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-module-init-tools = "3.15"
 CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
-RECIPE_UPSTREAM_DATE_pn-modutils-initscripts = "n/a"
-RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
 RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
 CHECK_DATE_pn-nettle = "Aug 21, 2014"
 RECIPE_NO_UPDATE_REASON_pn-nettle = "3.0.0 breaks gnutls, api changes"
-RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
-RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
-CHECK_DATE_pn-ofono = "Aug 31, 2012"
-RECIPE_NO_UPDATE_REASON_pn-openssl = "1.0.1 is beta 1.0.0c is latest"
-RECIPE_UPSTREAM_DATE_pn-opkg-collateral = "n/a"
-RECIPE_UPSTREAM_VERSION_pn-opkg = "0.1.8"
-RECIPE_NO_UPDATE_REASON_pn-oprofileui-server = "PRS Reports Incorrectly"
-CHECK_DATE_pn-opkg = "Aug 31, 2012"
-RECIPE_UPSTREAM_DATE_pn-opkg = "Feb 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends"
-RECIPE_UPSTREAM_VERSION_pn-pointercal = "0.0"
-RECIPE_UPSTREAM_DATE_pn-pointercal = "n/a"
 RECIPE_UPSTREAM_DATE_pn-poky-feed-config-opkg = "n/a"
 RECIPE_UPSTREAM_DATE_pn-polkit = "Jan 09, 2013"
 RECIPE_UPSTREAM_VERSION_pn-polkit = "0.110"
 CHECK_DATE_pn-polkit = "Mar 14, 2013"
 RECIPE_NO_UPDATE_REASON_pn-polkit = "requires spidermonkey 1.8.5, not available in poky"
-RECIPE_UPSTREAM_VERSION_pn-pong-clock = "1.0"
-RECIPE_NO_UPDATE_REASON_pn-powertop = "Do not upgrade to version 1.97 since it's a beta release of the comming PowerTOP 2.0"
-RECIPE_UPSTREAM_VERSION_pn-ppp-dialin = "check"
-RECIPE_UPSTREAM_VERSION_pn-prelink="1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00"
 RECIPE_NO_UPDATE_REASON_pn-python-distribute = "0.7.3 only upgrades 0.6.32, can't install on its own, also obsolete"
 RECIPE_UPSTREAM_VERSION_pn-python-distribute = "0.7.3"
 RECIPE_NO_UPDATE_REASON_pn-python-pygobject = "Newer versions of python-pygobject depend on gobject-introspection which doesn't cross-compile"
 RECIPE_UPSTREAM_VERSION_pn-python-pygobject = "3.13.3"
-CHECK_DATE_pn-prelink = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-qemu-helper-native = "n/a"
 RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
-RECIPE_UPSTREAM_VERSION_pn-rpm = "5.4.10"
-RECIPE_UPSTREAM_DATE_pn-rpm = "Jul 06, 2012"
-CHECK_DATE_pn-rpm = "Sep 03, 2012"
-RECIPE_UPSTREAM_VERSION_pn-run-postinsts = "check"
-RECIPE_NO_UPDATE_REASON_pn-sato-screenshot = "PRS Reports Incorrectly"
-RECIPE_NO_UPDATE_REASON_pn-socat = "2.0.0 is beta"
-RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.8.0.2"
-RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Sep 03, 2013"
-CHECK_DATE_pn-sqlite3= "Oct 02, 2013"
-RECIPE_UPSTREAM_VERSION_pn-squashfs-tools = "4.2"
-RECIPE_UPSTREAM_DATE_pn-squashfs-tools = "Feb 28, 2011"
-CHECK_DATE_pn-squashfs-tools = "Nov 09, 2012"
 RECIPE_NO_UPDATE_REASON_pn-syslinux="Waiting for 4.06 for 3.3 kernel headers support"
 RECIPE_NO_UPDATE_REASON_pn-texinfo = "Checking script parses directory wrong"
 RECIPE_UPSTREAM_VERSION_pn-tinylogin = "1.4"
 CHECK_DATE_pn-tinylogin = "Sep 03, 2012"
 RECIPE_UPSTREAM_DATE_pn-tinylogin = "Jan 03, 2003"
 RECIPE_NO_UPDATE_REASON_pn-tinylogin = "TinyLogin was merged into BusyBox."
-RECIPE_UPSTREAM_VERSION_pn-tremor="20120122"
-RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
-CHECK_DATE_pn-tremor = "Mar 11, 2013"
-RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
+
 RECIPE_UPSTREAM_VERSION_pn-ubootchart = "0.0+r12"
 CHECK_DATE_pn-ubootchart = "Sep 11, 2012"
 RECIPE_UPSTREAM_DATE_pn-udev-extraconf = "n/a"
@@ -226,10 +125,6 @@ CHECK_DATE_pn-unifdef-native = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-unzip = "6.0"
 RECIPE_UPSTREAM_DATE_pn-unzip = "Apr 25, 2009"
 CHECK_DATE_pn-unzip = "Sep 03, 2012"
-RECIPE_UPSTREAM_VERSION_pn-usbinit = "n/a"
-RECIPE_UPSTREAM_VERSION_pn-usbutils = "006"
-RECIPE_UPSTREAM_DATE_pn-usbutils = "Jul 06, 2012"
-CHECK_DATE_pn-usbutils = "Sep 03, 2012"
 RECIPE_NO_UPDATE_REASON_pn-vte = "Pending Glib-2.0 Update"
 RECIPE_UPSTREAM_VERSION_pn-webkit-gtk = "1.10.2"
 RECIPE_UPSTREAM_DATE_pn-webkit-gtk = "Dec 12, 2012"
@@ -237,18 +132,39 @@ CHECK_DATE_pn-webkit-gtk = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-webkit-gtk = ">= 1.10.2 needs ruby"
 RECIPE_UPSTREAM_DATE_pn-x11-common="Sep 22, 2008"
 RECIPE_UPSTREAM_VERSION_pn-x11-common = "1:7.6"
-CHECK_DAte_pn-x11-common = "Sep 03, 2012"
+CHECK_DATE_pn-x11-common = "Sep 03, 2012"
 RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
-RECIPE_UPSTREAM_VERSION_pn-xev = "1.0.4"
-RECIPE_UPSTREAM_DATE_pn-xev = "Oct 13, 2009"
-CHECK_DATE_pn-xev = "Sep 04, 2012"
-CHECK_DATE_pn-xinetd = "Jul 30, 2014"
 RECIPE_UPSTREAM_DATE_pn-xorg-minimal-fonts = "n/a"
 RECIPE_UPSTREAM_DATE_pn-xserver-nodm-init=""
-RECIPE_UPSTREAM_VERSION_pn-xz = "5.0.4"
-RECIPE_UPSTREAM_DATE_pn-xz = "unknown"
-CHECK_DATE_pn-xz = "Sep 04, 2012"
 RECIPE_NO_UPDATE_REASON_pn-zaurusd = "SVN rev 426 is last Stable release"
 RECIPE_UPSTREAM_VERSION_pn-zip = "3.0"
 RECIPE_UPSTREAM_DATE_pn-zip = "Sep 01, 2009"
 CHECK_DATE_pn-zip = "Sep 04, 2012"
+
+# GIT don't have tag
+RECIPE_UPSTREAM_VERSION_pn-x264 = "r2491"
+RECIPE_UPSTREAM_DATE_pn-x264 = "Nov 13, 2014"
+CHECK_DATE_pn-x264 = "Dec 17, 2014"
+
+RECIPE_UPSTREAM_VERSION_pn-mobile-broadband-provider-info = "20140618"
+RECIPE_UPSTREAM_DATE_pn-mobile-broadband-provider-info = "Jun 18, 2014"
+CHECK_DATE_pn-mobile-broadband-provider-info = "Dec 17, 2014"
+
+# SVN support isn't implemented
+RECIPE_UPSTREAM_VERSION_pn-tremor="20120314"
+RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
+CHECK_DATE_pn-tremor = "Mar 11, 2013"
+RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
+
+RECIPE_UPSTREAM_VERSION_pn-puzzles="r10286"
+RECIPE_UPSTREAM_DATE_pn-puzzles="Oct 20, 2014"
+CHECK_DATE_pn-puzzles = "Dec 18, 2014"
+
+RECIPE_UPSTREAM_VERSION_pn-unfs3="0.9.22.r494"
+RECIPE_UPSTREAM_DATE_pn-unfs3="Mar 14, 2014"
+CHECK_DATE_pn-unfs3 = "Dec 18, 2014"
+
+# Incompatible version format
+RECIPE_UPSTREAM_VERSION_pn-sqlite3="3.8.7.4"
+RECIPE_UPSTREAM_DATE_pn-sqlite3="Jan 22, 2012"
+CHECK_DATE_pn-sqlite3 = "Mar 11, 2013"
-- 
1.9.1


