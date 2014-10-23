Return-Path: <bogdan.purcareata@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD2AEE0080C; Thu, 23 Oct 2014 03:10:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1895 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Oct 2014 03:10:21 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0107.outbound.protection.outlook.com [157.56.110.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62F90E00799
	for <poky@yoctoproject.org>; Thu, 23 Oct 2014 03:10:21 -0700 (PDT)
Received: from CH1PR03CA001.namprd03.prod.outlook.com (10.255.156.146) by
	BLUPR03MB181.namprd03.prod.outlook.com (10.255.212.146) with Microsoft
	SMTP Server (TLS) id 15.1.6.9; Thu, 23 Oct 2014 09:38:43 +0000
Received: from BN1AFFO11FD017.protection.gbl (10.255.156.132) by
	CH1PR03CA001.outlook.office365.com (10.255.156.146) with Microsoft SMTP
	Server (TLS) id 15.1.6.9 via Frontend Transport;
	Thu, 23 Oct 2014 09:38:43 +0000
Received: from az84smr01.freescale.net (192.88.158.2) by
	BN1AFFO11FD017.mail.protection.outlook.com (10.58.52.77) with Microsoft
	SMTP
	Server (TLS) id 15.0.1049.20 via Frontend Transport; Thu, 23 Oct 2014
	09:38:42 +0000
Received: from fsr-fed1764-008.ea.freescale.net
	(fsr-fed1764-008.ea.freescale.net [10.171.73.44])
	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP id s9N9ceBQ017578;
	Thu, 23 Oct 2014 02:38:41 -0700
From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
To: <poky@yoctoproject.org>
Date: Thu, 23 Oct 2014 12:36:36 -0400
Message-ID: <1414082196-15045-1-git-send-email-bogdan.purcareata@freescale.com>
X-Mailer: git-send-email 1.9.rc1
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.88.158.2; CTRY:US; IPV:CAL; IPV:NLI;
	EFV:NLI; SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(87936001)(85306004)(19580405001)(19580395003)(85852003)(15202345003)(106466001)(64706001)(87286001)(36756003)(6806004)(50466002)(47776003)(68736004)(107046002)(44976005)(2351001)(69596002)(88136002)(95666004)(77156001)(48376002)(81156004)(89996001)(76482002)(102836001)(229853001)(110136001)(31966008)(92726001)(80022003)(33646002)(50986999)(104166001)(99396003)(21056001)(120916001)(86362001)(20776003)(84676001)(15975445006)(26826002)(105606002)(97736003)(62966002)(46102003)(92566001)(104016003)(93916002)(575784001)(50226001)(4396001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR03MB181;
	H:az84smr01.freescale.net; FPR:; MLV:ovrnspm;
	PTR:InfoDomainNonexistent; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR03MB181;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Forefront-PRVS: 0373D94D15
Received-SPF: Fail (protection.outlook.com: domain of freescale.com does not
	designate 192.88.158.2 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=192.88.158.2; helo=az84smr01.freescale.net;
Authentication-Results: spf=fail (sender IP is 192.88.158.2)
	smtp.mailfrom=bogdan.purcareata@freescale.com; 
X-OriginatorOrg: freescale.com
Subject: [PATCH] shadow: enable support for subordinate IDs
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
X-List-Received-Date: Thu, 23 Oct 2014 10:10:31 -0000
Content-Type: text/plain

Subordinate IDs support is required in order to enable creation of unprivileged
containers. Pull a required change from upstream in order to make shadow
cross-compile with subordinate IDs support. Enable flag in recipe.

Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
---
 ..._of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch |   41 ++++++++++++++++++++
 meta/recipes-extended/shadow/shadow.inc            |    3 +-
 2 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-extended/shadow/files/check_size_of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch

diff --git a/meta/recipes-extended/shadow/files/check_size_of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch b/meta/recipes-extended/shadow/files/check_size_of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch
new file mode 100644
index 0000000..185590c
--- /dev/null
+++ b/meta/recipes-extended/shadow/files/check_size_of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch
@@ -0,0 +1,41 @@
+From 2cb54158b80cdbd97ca3b36df83f9255e923ae3f Mon Sep 17 00:00:00 2001
+From: James Le Cuirot <chewi@aura-online.co.uk>
+Date: Sat, 23 Aug 2014 09:46:39 +0100
+Subject: [PATCH] Check size of uid_t and gid_t using AC_CHECK_SIZEOF
+
+This built-in check is simpler than the previous method and, most
+importantly, works when cross-compiling.
+
+Upstream-Status: Accepted
+[https://github.com/shadow-maint/shadow/commit/2cb54158b80cdbd97ca3b36df83f9255e923ae3f]
+
+Signed-off-by: Serge Hallyn <serge.hallyn@ubuntu.com>
+---
+ configure.in | 14 ++++----------
+ 1 file changed, 4 insertions(+), 10 deletions(-)
+
+diff --git a/configure.in b/configure.in
+index 1a3f841..4a4d6d0 100644
+--- a/configure.in
++++ b/configure.in
+@@ -335,16 +335,10 @@ if test "$enable_subids" != "no"; then
+ 	dnl
+ 	dnl FIXME: check if 32 bit UIDs/GIDs are supported by libc
+ 	dnl
+-	AC_RUN_IFELSE([AC_LANG_SOURCE([
+-#include <sys/types.h>
+-int main(void) {
+-	uid_t u;
+-	gid_t g;
+-	return (sizeof u < 4) || (sizeof g < 4);
+-}
+-	])], [id32bit="yes"], [id32bit="no"])
+-
+-	if test "x$id32bit" = "xyes"; then
++	AC_CHECK_SIZEOF([uid_t],, [#include "sys/types.h"])
++	AC_CHECK_SIZEOF([gid_t],, [#include "sys/types.h"])
++
++	if test "$ac_cv_sizeof_uid_t" -ge 4 && test "$ac_cv_sizeof_gid_t" -ge 4; then
+ 		AC_DEFINE(ENABLE_SUBIDS, 1, [Define to support the subordinate IDs.])
+ 		enable_subids="yes"
+ 	else
diff --git a/meta/recipes-extended/shadow/shadow.inc b/meta/recipes-extended/shadow/shadow.inc
index b2a5f0e..9fada0d 100644
--- a/meta/recipes-extended/shadow/shadow.inc
+++ b/meta/recipes-extended/shadow/shadow.inc
@@ -16,6 +16,7 @@ SRC_URI = "http://pkg-shadow.alioth.debian.org/releases/${BPN}-${PV}.tar.xz \
            file://fix-installation-failure-with-subids-disabled.patch \
            file://0001-su.c-fix-to-exec-command-correctly.patch \
            file://0001-Do-not-read-login.defs-before-doing-chroot.patch \
+           file://check_size_of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch \
            ${@bb.utils.contains('PACKAGECONFIG', 'pam', '${PAM_SRC_URI}', '', d)} \
            "
 
@@ -52,7 +53,7 @@ EXTRA_OECONF += "--without-audit \
                  --without-libcrack \
                  --without-selinux \
                  --with-group-name-max-length=24 \
-                 --enable-subordinate-ids=no \
+                 --enable-subordinate-ids=yes \
                  ${NSCDOPT}"
 
 NSCDOPT = ""
-- 
1.7.10.4


