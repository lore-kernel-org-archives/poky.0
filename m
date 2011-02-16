Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F0374C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:14:44 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G5EhTV023727
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 21:14:43 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:43 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:43 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 15 Feb 2011 23:12:40 -0600
Message-Id: <1443d6eb5b7702717654f9118627a084a083b295.1297832946.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 05:14:43.0357 (UTC)
	FILETIME=[6B90DCD0:01CBCD98]
Subject: [PATCH 1/4] rpm: Add the ability to use the platform file during install
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
X-List-Received-Date: Wed, 16 Feb 2011 05:14:44 -0000

Add a new rpm macro, rpmrc_platform_path to specify an alternative platform
file.  This is required to allow the dep resolver to identify compatible
packages.

Also workaround a minor problem with the --showrc command in RPM.  A bug
has been reported upstream on this.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package_rpm.bbclass                 |   15 ++-
 meta/recipes-devtools/rpm/rpm/rpm-platform.patch |  132 ++++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm/rpm-showrc.patch   |   23 ++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb           |    8 +-
 4 files changed, 170 insertions(+), 8 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-platform.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-showrc.patch

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index cc262dc..215be8d 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -219,7 +219,8 @@ package_install_internal_rpm () {
 
 	# Generate an install solution by doing a --justdb install, then recreate it with
 	# an actual package install!
-	${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+	${RPM} --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
 		-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
 		-D "__dbi_txn create nofsync" \
 		-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
@@ -235,7 +236,8 @@ package_install_internal_rpm () {
 				exit 1
 			fi
 			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_${task}_attemptonly.${PID}"
-			${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+			${RPM} --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
 				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
 				-D "__dbi_txn create nofsync private" \
 				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
@@ -254,7 +256,8 @@ package_install_internal_rpm () {
 	 cat /dev/null >  ${target_rootfs}/install/recommend.list
 	 while [ $loop -eq 1 ]; do
 		# Dump the full set of recommends...
-		${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		${RPM} --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+			--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
 			-D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${confbase}.macro`" \
 			-D "__dbi_txn create nofsync private" \
 			-qa --qf "[%{RECOMMENDS}\n]" | sort -u > ${target_rootfs}/install/recommend
@@ -273,7 +276,8 @@ package_install_internal_rpm () {
 				continue
 			fi
 			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_{task}_recommend.${PID}"
-			${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+			${RPM} --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+				--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
 				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
 				-D "__dbi_txn create nofsync private" \
 				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
@@ -293,7 +297,8 @@ package_install_internal_rpm () {
 
 	# Attempt install
 	${RPM} --root ${target_rootfs} \
-		-D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		--predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		--predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" \
 		-D "_dbpath ${rpmlibdir}" \
 		--noscripts --notriggers --noparentdirs --nolinktos \
 		-D "__dbi_txn create nofsync private" \
diff --git a/meta/recipes-devtools/rpm/rpm/rpm-platform.patch b/meta/recipes-devtools/rpm/rpm/rpm-platform.patch
new file mode 100644
index 0000000..09a1c13
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-platform.patch
@@ -0,0 +1,132 @@
+Fix up platform and related sysinfo file loading.
+
+This ensures that RPM knows the compatible set of package types at all times.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -ur rpm-5.4.0.orig/lib/depends.c rpm-5.4.0/lib/depends.c
+--- rpm-5.4.0.orig/lib/depends.c	2011-02-15 20:40:13.002849708 -0600
++++ rpm-5.4.0/lib/depends.c	2011-02-15 20:47:05.838981632 -0600
+@@ -248,7 +248,7 @@
+ 	    he->p.ptr = _free(he->p.ptr);
+ 	}
+ 
+-#if defined(RPM_VENDOR_WINDRIVER)
++#if defined(RPM_VENDOR_WINDRIVER) && !defined(RPM_VENDOR_POKY)
+ 	/*
+ 	 * If we're capable of installing multiple colors
+ 	 * but at least one of the packages are white (0), we
+@@ -505,7 +505,7 @@
+     return 0;
+ }
+ 
+-#if defined(RPM_VENDOR_WINDRIVER)
++#if defined(RPM_VENDOR_WINDRIVER) && !defined(RPM_VENDOR_POKY)
+ /* Is "compat" compatible w/ arch? */
+ int _isCompatibleArch(const char * arch, const char * compat)
+ {
+@@ -649,7 +649,7 @@
+ 
+ 	    if (arch == NULL || (parch = rpmteA(p)) == NULL)
+ 		continue;
+-#if defined(RPM_VENDOR_WINDRIVER)
++#if defined(RPM_VENDOR_WINDRIVER) && !defined(RPM_VENDOR_POKY)
+ 	    /* XXX hackery for alias matching. */
+ 	    if (!_isCompatibleArch(arch, parch))
+ 		continue;
+@@ -815,6 +815,12 @@
+     return rc;
+ }
+ 
++#if defined(RPM_VENDOR_WINDRIVER)
++#define _ETC_RPM_SYSINFO        "%{_etcrpm}/sysinfo"
++#else
++#define _ETC_RPM_SYSINFO        SYSCONFIGDIR "/sysinfo"
++#endif
++
+ /*@only@*/ /*@null@*/ /*@unchecked@*/
+ static char *sysinfo_path = NULL;
+ 
+@@ -1296,7 +1302,7 @@
+ 	sysinfo_path = rpmExpand("%{?_rpmds_sysinfo_path}", NULL);
+ 	if (!(sysinfo_path != NULL && *sysinfo_path == '/')) {
+ 	    sysinfo_path = _free(sysinfo_path);
+-	    sysinfo_path = xstrdup(SYSCONFIGDIR "/sysinfo");
++	    sysinfo_path = rpmExpand(_ETC_RPM_SYSINFO, NULL);
+ 	}
+     }
+ 
+diff -ur rpm-5.4.0.orig/lib/rpmds.c rpm-5.4.0/lib/rpmds.c
+--- rpm-5.4.0.orig/lib/rpmds.c	2011-02-15 20:40:13.004855352 -0600
++++ rpm-5.4.0/lib/rpmds.c	2011-02-15 20:41:55.598846670 -0600
+@@ -1737,7 +1737,7 @@
+ /*@-observertrans @*/
+ 	    _sysinfo_path = _free(_sysinfo_path);
+ /*@=observertrans @*/
+-	    _sysinfo_path = xstrdup(_ETC_RPM_SYSINFO);
++	    _sysinfo_path = rpmExpand(_ETC_RPM_SYSINFO, NULL);
+ 	}
+     }
+ /*@=modobserver@*/
+diff -ur rpm-5.4.0.orig/lib/rpmrc.c rpm-5.4.0/lib/rpmrc.c
+--- rpm-5.4.0.orig/lib/rpmrc.c	2011-02-15 20:40:13.006853913 -0600
++++ rpm-5.4.0/lib/rpmrc.c	2011-02-15 20:44:39.708972391 -0600
+@@ -38,7 +38,13 @@
+ static const char * configTarget = NULL;
+ 
+ /*@observer@*/ /*@unchecked@*/
+-static const char * platform = SYSCONFIGDIR "/platform";
++#if defined(RPM_VENDOR_WINDRIVER)
++#define _ETC_RPM_PLATFORM        "%{_etcrpm}/platform"
++#else
++#define _ETC_RPM_PLATFORM        SYSCONFIGDIR "/platform"
++#endif
++
++static const char * _platform = NULL;
+ 
+ /*@only@*/ /*@relnull@*/ /*@unchecked@*/
+ void * platpat = NULL;
+@@ -685,16 +691,17 @@
+     int rc;
+ 
+     while (!gotDefaults) {
+-#if defined(RPM_VENDOR_WINDRIVER)
+-	const char * _platform = rpmGetPath(__etcrpm, "/platform", NULL);
+-#else
+-	const char * _platform = platform;
+-#endif
++	if (_platform == NULL) {
++	    _platform = rpmExpand("%{?_rpmrc_platform_path}", NULL);
++	    /* XXX may need to validate path existence somewhen. */
++	    if (!(_platform != NULL && *_platform == '/')) {
++		_platform = _free(_platform);
++		_platform = rpmExpand(_ETC_RPM_PLATFORM, NULL);
++	    }
++	}
+ 	CVOG_t cvog = NULL;
+ #if defined(RPM_VENDOR_OPENPKG) /* larger-utsname */
+ 	const char *cp;
+-#endif
+-#if defined(RPM_VENDOR_OPENPKG) /* larger-utsname */
+ 	/* utsname fields on some platforms (like HP-UX) are very small
+ 	   (just about 8 characters). This is too small for OpenPKG, so cheat! */
+ 	rc = uname(&un_real);
+@@ -771,9 +778,7 @@
+ 	if (cp != NULL && cp != _platform)
+ 	    cp = _free(cp);
+ #endif
+-#if defined(RPM_VENDOR_WINDRIVER)
+ 	_platform = _free(_platform);
+-#endif
+ 
+ 	if (configTarget && !parseCVOG(configTarget, &cvog) && cvog != NULL) {
+ 	    gotDefaults = 1;
+@@ -1096,6 +1101,8 @@
+ 
+ #ifdef PREMACROFILES
+     if (rpmReadRC(PREMACROFILES)) return -1;
++#else
++    if (rpmReadRC(NULL)) return -1;
+ #endif
+ 
+     /* Reset umask to its default umask(2) value. */
diff --git a/meta/recipes-devtools/rpm/rpm/rpm-showrc.patch b/meta/recipes-devtools/rpm/rpm/rpm-showrc.patch
new file mode 100644
index 0000000..5051ce6
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-showrc.patch
@@ -0,0 +1,23 @@
+Workaround for a memory leak in --showrc.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -ur rpm-5.4.0.orig/lib/rpmrc.c rpm-5.4.0/lib/rpmrc.c
+--- rpm-5.4.0.orig/lib/rpmrc.c	2011-02-15 20:40:13.006853913 -0600
++++ rpm-5.4.0/lib/rpmrc.c	2011-02-15 20:44:39.708972391 -0600
+@@ -1216,11 +1223,15 @@
+ 		if (DNEVR != NULL)
+ 		    fprintf(fp, "    %s\n", DNEVR+2);
+ 	    }
++#if 0
+ 	    (void)rpmdsFree(ds);
+ 	    ds = NULL;
++#endif
+ 	    fprintf(fp, "\n");
+ 	}
++#if 0
+ 	PRCO = rpmdsFreePRCO(PRCO);
++#endif
+     }
+ 
+     if (rpmIsVerbose()) {
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 56fcd9c..93951d2 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -43,7 +43,7 @@ LICENSE = "LGPL 2.1"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 DEPENDS = "bzip2 zlib python perl db openssl elfutils expat libpcre attr acl popt"
-PR = "r11"
+PR = "r12"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
@@ -51,7 +51,9 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;ex
 	   file://perfile_rpmdeps.sh \
 	   file://rpm-autogen.patch \
 	   file://rpm-libsql-fix.patch \
-           file://header-include-fix.patch \
+	   file://header-include-fix.patch \
+	   file://rpm-platform.patch \
+	   file://rpm-showrc.patch \
 	  "
 
 #           file://hdraddorappend.patch \
@@ -155,7 +157,7 @@ EXTRA_OECONF = "--verbose \
 		--with-path-macros=${rpm_macros} \
 		--with-bugreport=http://bugzilla.pokylinux.org"
 
-CFLAGS_append = " -DRPM_VENDOR_WINDRIVER"
+CFLAGS_append = " -DRPM_VENDOR_WINDRIVER -DRPM_VENDOR_POKY"
 
 PACKAGES = "${PN}-dbg ${PN} ${PN}-doc ${PN}-libs ${PN}-dev ${PN}-common ${PN}-build python-rpm-dbg python-rpm perl-module-rpm perl-module-rpm-dev ${PN}-locale"
 
-- 
1.7.3.4


