Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45DEBE00873; Tue, 20 Jan 2015 11:38:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDA1E00860
	for <poky@yoctoproject.org>; Tue, 20 Jan 2015 11:38:46 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2015 11:38:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,436,1418112000"; d="scan'208";a="653878657"
Received: from unknown (HELO swold-mobl5.amr.corp.intel.com) ([10.252.252.118])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2015 11:38:43 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Jan 2015 11:38:35 -0800
Message-Id: <1421782715-30045-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Subject: [PATCH] maintainers: Update for non-maintained recipes
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
X-List-Received-Date: Tue, 20 Jan 2015 19:38:50 -0000
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 31 ++++++++++++++++++++------
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 84797c3..49e6f06 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -74,6 +74,7 @@ RECIPE_MAINTAINER_pn-builder = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-busybox = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-byacc = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-bzip2 = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-ca-certificates = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cairo = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-calibrateproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-ccache = "Wenzong Fan <wenzong.fan@windriver.com>"
@@ -123,8 +124,9 @@ RECIPE_MAINTAINER_pn-cwautomacros = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-damageproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-db = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-dbus = "Chong Lu <Chong.Lu@windriver.com>"
-RECIPE_MAINTAINER_pn-dbus-ptest = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-glib = "Chong Lu <Chong.Lu@windriver.com>"
+RECIPE_MAINTAINER_pn-dbus-ptest = "Chong Lu <Chong.Lu@windriver.com>"
+RECIPE_MAINTAINER_pn-dbus-test = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-wait = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-desktop-file-utils-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dhcp = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -177,8 +179,9 @@ RECIPE_MAINTAINER_pn-gaku = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gamin = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gawk = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-gcc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-gcc-source = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-gccmakedep = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-runtime = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-gcc-runtime = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-gconf = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gdb = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-gdbm = "Saul Wold <sgw@linux.intel.com>"
@@ -305,8 +308,9 @@ RECIPE_MAINTAINER_pn-libffi  = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libfile-checktree-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libfm = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libfontenc = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-libgcc = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libgcc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libgcrypt = "Hongxu Jia <hongxu.jia@windriver.com>"
+RECIPE_MAINTAINER_pn-libgfortran = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libglade = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libgpg-error = "Paul Eggleton <paul.eggleton@linux.intel.com>"
@@ -316,6 +320,7 @@ RECIPE_MAINTAINER_pn-libice = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libid3tag = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libidn = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libinput = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libjson = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libksba = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libmad = "Saul Wold <sgw@linux.intel.com>"
@@ -336,6 +341,7 @@ RECIPE_MAINTAINER_pn-libpam = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libpcap = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libpciaccess = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libpcre = "Chong Lu <Chong.Lu@windriver.com>"
+RECIPE_MAINTAINER_pn-libpfm4 = "Matthew McClintock <msm@freescale.com>"
 RECIPE_MAINTAINER_pn-libpng = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libpng12 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Saul Wold <sgw@linux.intel.com>"
@@ -393,6 +399,7 @@ RECIPE_MAINTAINER_pn-libxrender = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libxres = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libxscrnsaver = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libxsettings-client = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-libxshmfence = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libxslt = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libxt = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libxtst = "Ross Burton <ross.burton@intel.com>"
@@ -408,8 +415,9 @@ RECIPE_MAINTAINER_pn-linux-firmware = "Cristian Iorga <cristian.iorga@intel.com>
 RECIPE_MAINTAINER_pn-linux-libc-headers = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto = "Darren Hart <dvhart@linux.intel.com>"
+RECIPE_MAINTAINER_pn-linux-yocto-dev = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Darren Hart <dvhart@linux.intel.com>"
-RECIPE_MAINTAINER_pn-linux-yocto-tiny = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-linux-yocto-tiny = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-logrotate = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-lrzsz = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-lsbinitscripts = "Saul Wold <sgw@linux.intel.com>"
@@ -443,8 +451,9 @@ RECIPE_MAINTAINER_pn-matchbox-wm = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mc = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mdadm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-menu-cache = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-mesa-demos = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mesa = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-mesa-demos = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-mesa-gl = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain-qte = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain = "Jessica Zhang <jessica.zhang@intel.com>"
@@ -556,9 +565,12 @@ RECIPE_MAINTAINER_pn-pulseaudio = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-puzzles = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-python-argparse = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-python-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-dbus = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-python-git = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-gitdb = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-gst = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-imaging = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-mako = "Khem Raj <raj.khem@gmail.com>"
@@ -572,6 +584,7 @@ RECIPE_MAINTAINER_pn-python-pyrex = "Richard Purdie <richard.purdie@linuxfoundat
 RECIPE_MAINTAINER_pn-python-scons = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-setuptools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-smartpm = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python3-distribute = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -634,6 +647,7 @@ RECIPE_MAINTAINER_pn-sysklogd = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-syslinux = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sysprof = "Tom Zanussi <tom.zanussi@intel.com>"
 RECIPE_MAINTAINER_pn-sysstat = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-systemd = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-systemtap = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-systemtap-uprobes = "Tom Zanussi <tom.zanussi@intel.com>"
 RECIPE_MAINTAINER_pn-sysvinit-inittab = "Saul Wold <sgw@linux.intel.com>"
@@ -660,9 +674,11 @@ RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-u-boot = "Denys Dmytriyenko <denis@denix.org>"
+RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Denys Dmytriyenko <denis@denix.org>"
+RECIPE_MAINTAINER_pn-u-boot-mkimage = "Denys Dmytriyenko <denis@denix.org>"
 RECIPE_MAINTAINER_pn-ubootchart = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-u-boot-mkimage = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-uclibc = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-udev-extraconf = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-udev = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-unifdef = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -678,6 +694,7 @@ RECIPE_MAINTAINER_pn-vala = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-valgrind = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-videoproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-vte = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-waffle = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-watchdog = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-wayland = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-webkit-gtk = "Ross Burton <ross.burton@intel.com>"
-- 
2.1.0


