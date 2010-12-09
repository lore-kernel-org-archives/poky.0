Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65BA24C811ED
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:46:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 08:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="686681037"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 08:46:45 -0800
Message-Id: <20d443bd4066961120d899851ad86d6e266ea214.1292258655.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292258655.git.nitin.a.kamble@intel.com>
References: <cover.1292258655.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Thu, 9 Dec 2010 10:16:51 -0800
To: poky@yoctoproject.org
Subject: [PATCH 4/6] gnu-config: upgrade recipe to the latest repo head
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
X-List-Received-Date: Mon, 13 Dec 2010 16:46:46 -0000

gnu-config recipe was using cvs repo for sources, and now the upstream
has changed and is using git to export the repo. Using git repo for
src_uri, was causing circular dependancy for bitbake. Hence using a
tarball exported by the web git interface.

Currently the http fetcher can not handle the web git url properly,
hence temporarily relying on the autobuilder, with the hope that new
bitbake fetchers would fix the issue. A bug has been opened for the
fetcher issue: http://bugzilla.pokylinux.org/show_bug.cgi?id=573

for example the git web url of the tarball is :
http://git.savannah.gnu.org/gitweb/?p=config.git;a=snapshot;h=3155524d0410c37b6286465249264c7981ab8cba;sf=tgz

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../gnu-config/config-guess-uclibc.patch           |  130 +++++++++-----------
 .../gnu-config/gnu-config_20080123.bb              |   38 ------
 meta/recipes-devtools/gnu-config/gnu-config_git.bb |   48 +++++++
 3 files changed, 107 insertions(+), 109 deletions(-)
 delete mode 100644 meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
 create mode 100644 meta/recipes-devtools/gnu-config/gnu-config_git.bb

diff --git a/meta/recipes-devtools/gnu-config/gnu-config/config-guess-uclibc.patch b/meta/recipes-devtools/gnu-config/gnu-config/config-guess-uclibc.patch
index f820cef..4f10adb 100644
--- a/meta/recipes-devtools/gnu-config/gnu-config/config-guess-uclibc.patch
+++ b/meta/recipes-devtools/gnu-config/gnu-config/config-guess-uclibc.patch
@@ -3,11 +3,11 @@ Patch courtesy gentoo-portage/sys-devel/gnuconfig/files/automake-1.8.5-config-gu
 updated to 20050516 by Marcin 'Hrw' Juszkiewicz (by hand)
 updated to 20080123 by Nitin A Kamble (by hand)
 
-Index: config/config.guess
+Index: config-1a0cbc1/config.guess
 ===================================================================
---- config.orig/config.guess
-+++ config/config.guess
-@@ -139,6 +139,19 @@ UNAME_RELEASE=`(uname -r) 2>/dev/null` |
+--- config-1a0cbc1.orig/config.guess
++++ config-1a0cbc1/config.guess
+@@ -140,6 +140,19 @@ UNAME_RELEASE=`(uname -r) 2>/dev/null` |
  UNAME_SYSTEM=`(uname -s) 2>/dev/null`  || UNAME_SYSTEM=unknown
  UNAME_VERSION=`(uname -v) 2>/dev/null` || UNAME_VERSION=unknown
  
@@ -27,7 +27,24 @@ Index: config/config.guess
  # Note: order is significant - the case branches are not exclusive.
  
  case "${UNAME_MACHINE}:${UNAME_SYSTEM}:${UNAME_RELEASE}:${UNAME_VERSION}" in
-@@ -840,13 +853,13 @@ EOF
+@@ -191,7 +204,7 @@ case "${UNAME_MACHINE}:${UNAME_SYSTEM}:$
+ 	# suitable tag, in the style of linux-gnu.
+ 	case "${UNAME_VERSION}" in
+ 	    Debian*)
+-		release='-gnu'
++		release='-${LIBC}'
+ 		;;
+ 	    *)
+ 		release=`echo ${UNAME_RELEASE}|sed -e 's/[-_].*/\./'`
+@@ -870,29 +883,29 @@ EOF
+         esac
+ 	objdump --private-headers /bin/sh | grep -q ld.so.1
+ 	if test "$?" = 0 ; then LIBC="libc1" ; else LIBC="" ; fi
+-	echo ${UNAME_MACHINE}-unknown-linux-gnu${LIBC}
++	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
+ 	exit ;;
+     arm*:Linux:*:*)
+ 	eval $set_cc_for_build
  	if echo __ARM_EABI__ | $CC_FOR_BUILD -E - 2>/dev/null \
  	    | grep -q __ARM_EABI__
  	then
@@ -42,14 +59,22 @@ Index: config/config.guess
 +	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
  	exit ;;
      cris:Linux:*:*)
- 	echo cris-axis-linux-gnu
-@@ -855,16 +868,16 @@ EOF
- 	echo crisv32-axis-linux-gnu
+-	echo cris-axis-linux-gnu
++	echo cris-axis-linux-${LIBC}
+ 	exit ;;
+     crisv32:Linux:*:*)
+-	echo crisv32-axis-linux-gnu
++	echo crisv32-axis-linux-${LIBC}
  	exit ;;
      frv:Linux:*:*)
 -    	echo frv-unknown-linux-gnu
 +    	echo frv-unknown-linux-${LIBC}
  	exit ;;
+     i*86:Linux:*:*)
+ 	LIBC=gnu
+@@ -906,13 +919,13 @@ EOF
+ 	echo "${UNAME_MACHINE}-pc-linux-${LIBC}"
+ 	exit ;;
      ia64:Linux:*:*)
 -	echo ${UNAME_MACHINE}-unknown-linux-gnu
 +	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
@@ -62,21 +87,12 @@ Index: config/config.guess
 -	echo ${UNAME_MACHINE}-unknown-linux-gnu
 +	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
  	exit ;;
-     mips:Linux:*:*)
+     mips:Linux:*:* | mips64:Linux:*:*)
  	eval $set_cc_for_build
-@@ -887,7 +900,7 @@ EOF
- 		s: ::g
- 		p
- 	    }'`"
--	test x"${CPU}" != x && { echo "${CPU}-unknown-linux-gnu"; exit; }
-+	test x"${CPU}" != x && { echo "${CPU}-unknown-linux-${LIBC}"; exit; }
- 	;;
-     mips64:Linux:*:*)
- 	eval $set_cc_for_build
-@@ -910,16 +923,16 @@ EOF
- 		s: ::g
- 		p
- 	    }'`"
+@@ -931,54 +944,54 @@ EOF
+ 	#endif
+ EOF
+ 	eval `$CC_FOR_BUILD -E $dummy.c 2>/dev/null | grep '^CPU'`
 -	test x"${CPU}" != x && { echo "${CPU}-unknown-linux-gnu"; exit; }
 +	test x"${CPU}" != x && { echo "${CPU}-unknown-linux-${LIBC}"; exit; }
  	;;
@@ -84,24 +100,13 @@ Index: config/config.guess
 -	echo or32-unknown-linux-gnu
 +	echo or32-unknown-linux-${LIBC}
  	exit ;;
-     ppc:Linux:*:*)
--	echo powerpc-unknown-linux-gnu
-+	echo powerpc-unknown-linux-${LIBC}
- 	exit ;;
-     ppc64:Linux:*:*)
--	echo powerpc64-unknown-linux-gnu
-+	echo powerpc64-unknown-linux-${LIBC}
+     padre:Linux:*:*)
+-	echo sparc-unknown-linux-gnu
++	echo sparc-unknown-linux-${LIBC}
  	exit ;;
-     alpha:Linux:*:*)
- 	case `sed -n '/^cpu model/s/^.*: \(.*\)/\1/p' < /proc/cpuinfo` in
-@@ -932,40 +945,40 @@ EOF
- 	  EV68*) UNAME_MACHINE=alphaev68 ;;
-         esac
- 	objdump --private-headers /bin/sh | grep ld.so.1 >/dev/null
--	if test "$?" = 0 ; then LIBC="libc1" ; else LIBC="" ; fi
--	echo ${UNAME_MACHINE}-unknown-linux-gnu${LIBC}
-+	if test "$?" = 0 ; then LIBC="gnulibc1" ; fi
-+	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
+     parisc64:Linux:*:* | hppa64:Linux:*:*)
+-	echo hppa64-unknown-linux-gnu
++	echo hppa64-unknown-linux-${LIBC}
  	exit ;;
      parisc:Linux:*:* | hppa:Linux:*:*)
  	# Look for CPU level
@@ -114,9 +119,13 @@ Index: config/config.guess
 +	  *)    echo hppa-unknown-linux-${LIBC} ;;
  	esac
  	exit ;;
-     parisc64:Linux:*:* | hppa64:Linux:*:*)
--	echo hppa64-unknown-linux-gnu
-+	echo hppa64-unknown-linux-${LIBC}
+     ppc64:Linux:*:*)
+-	echo powerpc64-unknown-linux-gnu
++	echo powerpc64-unknown-linux-${LIBC}
+ 	exit ;;
+     ppc:Linux:*:*)
+-	echo powerpc-unknown-linux-gnu
++	echo powerpc-unknown-linux-${LIBC}
  	exit ;;
      s390:Linux:*:* | s390x:Linux:*:*)
  	echo ${UNAME_MACHINE}-ibm-linux
@@ -133,8 +142,13 @@ Index: config/config.guess
 -	echo ${UNAME_MACHINE}-unknown-linux-gnu
 +	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
  	exit ;;
+     tile*:Linux:*:*)
+-	echo ${UNAME_MACHINE}-tilera-linux-gnu
++	echo ${UNAME_MACHINE}-tilera-linux-${LIBC}
+ 	exit ;;
      vax:Linux:*:*)
- 	echo ${UNAME_MACHINE}-dec-linux-gnu
+-	echo ${UNAME_MACHINE}-dec-linux-gnu
++	echo ${UNAME_MACHINE}-dec-linux-${LIBC}
  	exit ;;
      x86_64:Linux:*:*)
 -	echo x86_64-unknown-linux-gnu
@@ -144,31 +158,5 @@ Index: config/config.guess
 -    	echo ${UNAME_MACHINE}-unknown-linux-gnu
 +    	echo ${UNAME_MACHINE}-unknown-linux-${LIBC}
  	exit ;;
-     i*86:Linux:*:*)
- 	# The BFD linker knows what the default object file format is, so
-@@ -980,20 +993,21 @@ EOF
- 				    p'`
-         case "$ld_supported_targets" in
- 	  elf32-i386)
--		TENTATIVE="${UNAME_MACHINE}-pc-linux-gnu"
-+		TENTATIVE="${UNAME_MACHINE}-pc-linux-${LIBC}"
- 		;;
- 	  a.out-i386-linux)
--		echo "${UNAME_MACHINE}-pc-linux-gnuaout"
-+		echo "${UNAME_MACHINE}-pc-linux-${LIBC}aout"
- 		exit ;;
- 	  coff-i386)
--		echo "${UNAME_MACHINE}-pc-linux-gnucoff"
-+		echo "${UNAME_MACHINE}-pc-linux-${LIBC}coff"
- 		exit ;;
- 	  "")
- 		# Either a pre-BFD a.out linker (linux-gnuoldld) or
- 		# one that does not give us useful --help.
--		echo "${UNAME_MACHINE}-pc-linux-gnuoldld"
-+		echo "${UNAME_MACHINE}-pc-linux-${LIBC}oldld"
- 		exit ;;
- 	esac
-+	if [ $LIBC != "gnu" -o $LIBC != "gnulibc1" ];then echo "$TENTATIVE" && exit; fi
- 	# Determine whether the default compiler is a.out or elf
- 	eval $set_cc_for_build
- 	sed 's/^	//' << EOF >$dummy.c
+     i*86:DYNIX/ptx:4*:*)
+ 	# ptx 4.0 does uname -s correctly, with DYNIX/ptx in there.
diff --git a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
deleted file mode 100644
index 5d7d646..0000000
--- a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
+++ /dev/null
@@ -1,38 +0,0 @@
-DESCRIPTION = "gnu-configize"
-SECTION = "devel"
-LICENSE = "GPLv1+"
-LIC_FILES_CHKSUM = "file://config.guess;endline=39;md5=a089987af4a25cb0419d1c2fd6d495e3"
-DEPENDS = ""
-INHIBIT_DEFAULT_DEPS = "1"
-
-FIXEDSRCDATE = "${@bb.data.getVar('FILE', d, 1).split('_')[-1].split('.')[0]}"
-PV = "0.1+cvs${FIXEDSRCDATE}"
-PR = "r1"
-
-SRC_URI = "cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=${FIXEDSRCDATE} \
-	   file://config-guess-uclibc.patch \
-           file://gnu-configize.in"
-S = "${WORKDIR}/config"
-
-do_compile() {
-	:
-}
-
-do_install () {
-	install -d ${D}${datadir}/gnu-config \
-		   ${D}${bindir}
-	cat ${WORKDIR}/gnu-configize.in | \
-		sed -e 's,@gnu-configdir@,${datadir}/gnu-config,g' \
-		    -e 's,@autom4te_perllibdir@,${datadir}/autoconf,g' > ${D}${bindir}/gnu-configize
-	# In the native case we want the system perl as perl-native can't have built yet
-	if [ "${BUILD_ARCH}" != "${TARGET_ARCH}" ]; then
-		sed -i -e 's,/usr/bin/perl,${bindir}/perl,g' ${D}${bindir}/gnu-configize
-	fi
-	chmod 755 ${D}${bindir}/gnu-configize
-	install -m 0644 config.guess config.sub ${D}${datadir}/gnu-config/
-}
-
-PACKAGES = "${PN}"
-FILES_${PN} = "${bindir} ${datadir}/gnu-config"
-
-BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/gnu-config/gnu-config_git.bb b/meta/recipes-devtools/gnu-config/gnu-config_git.bb
new file mode 100644
index 0000000..9f0fed4
--- /dev/null
+++ b/meta/recipes-devtools/gnu-config/gnu-config_git.bb
@@ -0,0 +1,48 @@
+DESCRIPTION = "gnu-configize"
+SECTION = "devel"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://config.guess;beginline=9;endline=39;md5=b41f5a207cf8503d8706f4cf0844cd47"
+DEPENDS = ""
+INHIBIT_DEFAULT_DEPS = "1"
+
+SRCREV = "3155524d0410c37b6286465249264c7981ab8cba"
+SRCREV_SHORT = "${@bb.data.getVar('SRCREV', d, 1)[0:7]}"
+
+PV = "0.0+git${SRCREV_SHORT}"
+PR = "r0"
+
+# Bellow is the git web interface pointer to the tarball. The ';' in the url  
+# currently is not working for the bitbake http fetcher. Until that bug gets 
+# fixed using the autobuilder source mirror url to get the tarball.
+#
+# SRC_URI="http://git.savannah.gnu.org/gitweb/?p=config.git;a=snapshot;h=${SRCREV};sf=tgz;localfile=${DL_DIR}/config-${SRCREV_SHORT}.tar.gz "
+
+SRC_URI = "\
+        http://autobuilder.pokylinux.org/sources/config-${SRCREV_SHORT}.tar.gz \
+	file://config-guess-uclibc.patch \
+        file://gnu-configize.in"
+
+S = "${WORKDIR}/config-${SRCREV_SHORT}/"
+
+do_compile() {
+	:
+}
+
+do_install () {
+	install -d ${D}${datadir}/gnu-config \
+		   ${D}${bindir}
+	cat ${WORKDIR}/gnu-configize.in | \
+		sed -e 's,@gnu-configdir@,${datadir}/gnu-config,g' \
+		    -e 's,@autom4te_perllibdir@,${datadir}/autoconf,g' > ${D}${bindir}/gnu-configize
+	# In the native case we want the system perl as perl-native can't have built yet
+	if [ "${BUILD_ARCH}" != "${TARGET_ARCH}" ]; then
+		sed -i -e 's,/usr/bin/perl,${bindir}/perl,g' ${D}${bindir}/gnu-configize
+	fi
+	chmod 755 ${D}${bindir}/gnu-configize
+	install -m 0644 config.guess config.sub ${D}${datadir}/gnu-config/
+}
+
+PACKAGES = "${PN}"
+FILES_${PN} = "${bindir} ${datadir}/gnu-config"
+
+BBCLASSEXTEND = "native"
-- 
1.7.2.2


