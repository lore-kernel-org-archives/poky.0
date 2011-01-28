Return-Path: <trini@kernel.crashing.org>
Received: from fed1rmmtao106.cox.net (fed1rmmtao106.cox.net [68.230.241.40])
	by mx1.pokylinux.org (Postfix) with ESMTP id F159C4C80594
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 15:07:27 -0600 (CST)
Received: from fed1rmimpo03.cox.net ([70.169.32.75]) by fed1rmmtao106.cox.net
	(InterMail vM.8.01.04.00 201-2260-137-20101110) with ESMTP
	id <20110128210726.NGST7311.fed1rmmtao106.cox.net@fed1rmimpo03.cox.net>;
	Fri, 28 Jan 2011 16:07:26 -0500
Received: from localhost ([68.230.54.74]) by fed1rmimpo03.cox.net with bizsmtp
	id 197S1g00b1c4QQc0497SgC; Fri, 28 Jan 2011 16:07:27 -0500
X-VR-Score: 0.00
X-Authority-Analysis: v=1.1 cv=vWqChlSN17ID9vwy2WxNUKipYCNqDp4HbHlXNc8DAM4=
	c=1 sm=1 a=0-zQuJb1czIA:10 a=Radsl6Z+G8iJZwukXIp+gw==:17
	a=9Wbp7B8dAAAA:8
	a=zppa0np56LqLqJs7WHMA:9 a=H2ZW7y0uWKkJnzEfcW8A:7
	a=mo2ZxOIaYudCgkJK0ubFwPE2FO8A:4 a=QKMRfEvApNQA:10
	a=Radsl6Z+G8iJZwukXIp+gw==:117
X-CM-Score: 0.00
Authentication-Results: cox.net; none
From: Tom Rini <tom_rini@mentor.com>
To: poky@yoctoproject.org
Date: Fri, 28 Jan 2011 14:07:21 -0700
Message-Id: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Fri, 28 Jan 2011 21:07:28 -0000

Rather than using a wrapper switch to using upstreams support for
relocation.  While in here, bring in the mangling to use
/usr/bin/env perl rather than /full/path/to in order to work
in deep directory paths.

Signed-off-by: Tom Rini <tom_rini@mentor.com>
---
 meta/recipes-devtools/perl/perl-native_5.12.2.bb |   25 +++++++++++++--------
 1 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-native_5.12.2.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
index 14da569..a634da5 100644
--- a/meta/recipes-devtools/perl/perl-native_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
@@ -4,8 +4,7 @@ SECTION = "libs"
 LICENSE = "Artistic|GPL"
 LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
 		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
-DEPENDS = "virtual/db-native gdbm-native"
-PR = "r2"
+PR = "r3"
 
 LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
                     file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
@@ -29,19 +28,21 @@ do_configure () {
 		-Dcflags="${CFLAGS}" \
 		-Dldflags="${LDFLAGS}" \
 		-Dcf_by="Open Embedded" \
+		\
 		-Dprefix=${prefix} \
 		-Dvendorprefix=${prefix} \
 		-Dvendorprefix=${prefix} \
 		-Dsiteprefix=${prefix} \
 		\
-		-Dprivlib=${STAGING_LIBDIR}/perl/${PV} \
-		-Darchlib=${STAGING_LIBDIR}/perl/${PV} \
-		-Dvendorlib=${STAGING_LIBDIR}/perl/${PV} \
-		-Dvendorarch=${STAGING_LIBDIR}/perl/${PV} \
-		-Dsitelib=${STAGING_LIBDIR}/perl/${PV} \
-		-Dsitearch=${STAGING_LIBDIR}/perl/${PV} \
+		-Dprivlib=.../../lib/perl/${PV} \
+		-Darchlib=.../../lib/perl/${PV} \
+		-Dvendorlib=.../../lib/perl/${PV} \
+		-Dvendorarch=.../../lib/perl/${PV} \
+		-Dsitelib=.../../lib/perl/${PV} \
+		-Dsitearch=.../../lib/perl/${PV} \
+		-Duserelocatableinc="y" \
 		\
-		-Duseshrplib \
+		-Uuseshrplib \
 		-Dusethreads \
 		-Duseithreads \
 		-Duselargefiles \
@@ -89,8 +90,12 @@ do_install () {
 		install $i ${D}${libdir}/perl/${PV}/CORE
 	done
 
-	create_wrapper ${D}${bindir}/perl PERL5LIB='$PERL5LIB:${STAGING_LIBDIR}/perl/5.12.2:${STAGING_LIBDIR}/perl/'
+	# Make sure we use /usr/bin/env perl
+	for PERLSCRIPT in `grep -rIEl '#!.*/perl' ${D}${bindir}`; do
+		sed -i -e '1s|^#!.*|#!/usr/bin/env perl|' $PERLSCRIPT
+	done
 }
+
 do_install_append_nylon() {
 	# get rid of definitions not supported by the gcc version we use for nylon...
 	for i in ${D}${libdir}/perl/${PV}/Config_heavy.pl ${D}${libdir}/perl/config.sh; do
-- 
1.7.0.4


