Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DCE94C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 14:37:24 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11KbOxb025530
	for <poky@yoctoproject.org>; Tue, 1 Feb 2011 12:37:24 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 12:37:23 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 12:37:23 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  1 Feb 2011 14:33:50 -0600
Message-Id: <3e02dec510580151fbe71ae527cf3435e97bb1e6.1296592165.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296592165.git.mark.hatle@windriver.com>
References: <cover.1296592165.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296592165.git.mark.hatle@windriver.com>
References: <cover.1296592165.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 01 Feb 2011 20:37:23.0812 (UTC)
	FILETIME=[D4C5AA40:01CBC24F]
Subject: [PATCH 1/1] rpm: Add relocation to rpm-native
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
X-List-Received-Date: Tue, 01 Feb 2011 20:37:24 -0000

BUG 668

Use the create_wrapper to setup automatic run-time relocation of
rpm-native.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/rpm/rpm_5.4.0.bb |   28 +++++++++++++++++++++++++++-
 1 files changed, 27 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 0f3425f..09d1fc0 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -43,7 +43,7 @@ LICENSE = "LGPL 2.1"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 DEPENDS = "bzip2 zlib python perl db openssl elfutils expat libpcre attr acl popt"
-PR = "r9"
+PR = "r10"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
@@ -430,4 +430,30 @@ do_install_append() {
 	rm -f ${D}/${libdir}/rpm/libsqldb.*
 }
 
+do_install_append_virtclass-native() {
+        create_wrapper ${D}/${bindir}/rpm \
+		RPM_USRLIBRPM=${STAGING_LIBDIR_NATIVE}/rpm \
+		RPM_ETCRPM=${STAGING_ETCDIR_NATIVE}/rpm \
+		RPM_LOCALEDIRRPM=${STAGING_DATADIR_NATIVE}/locale
+
+        create_wrapper ${D}/${bindir}/rpm2cpio \
+		RPM_USRLIBRPM=${STAGING_LIBDIR_NATIVE}/rpm \
+		RPM_ETCRPM=${STAGING_ETCDIR_NATIVE}/rpm \
+		RPM_LOCALEDIRRPM=${STAGING_DATADIR_NATIVE}/locale
+
+        create_wrapper ${D}/${bindir}/rpmbuild \
+		RPM_USRLIBRPM=${STAGING_LIBDIR_NATIVE}/rpm \
+		RPM_ETCRPM=${STAGING_ETCDIR_NATIVE}/rpm \
+		RPM_LOCALEDIRRPM=${STAGING_DATADIR_NATIVE}/locale
+
+        create_wrapper ${D}/${bindir}/rpmconstant \
+		RPM_USRLIBRPM=${STAGING_LIBDIR_NATIVE}/rpm \
+		RPM_ETCRPM=${STAGING_ETCDIR_NATIVE}/rpm \
+		RPM_LOCALEDIRRPM=${STAGING_DATADIR_NATIVE}/locale
+
+	# Adjust popt macros to match...
+	cat ${D}/${libdir}/rpm/rpmpopt | sed -e "s,^\(rpm[^ 	]*\)\([ 	]\),\1.real\2," > ${D}/${libdir}/rpm/rpmpopt.new
+	mv ${D}/${libdir}/rpm/rpmpopt.new ${D}/${libdir}/rpm/rpmpopt
+}
+
 BBCLASSEXTEND = "native"
-- 
1.7.3.4


