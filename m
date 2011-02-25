Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E869F4C80A8C
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 17:40:18 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1PNeIjY029277
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 15:40:18 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 25 Feb 2011 15:40:18 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 25 Feb 2011 17:39:14 -0600
Message-ID: <6c6d4f4bffd9ada3bc89728f8b4812f02ce36fe9.1298677071.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1298677071.git.mark.hatle@windriver.com>
References: <cover.1298677071.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 2/3] rpm: Fix rpm usage of prelink on the target
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
X-List-Received-Date: Fri, 25 Feb 2011 23:40:19 -0000
Content-Type: text/plain

RPM has the ability to validate files that have been prelinked, however
the necessary configuration and staging was not done properly.  Resolve
this issue by fixing the macro paths, providing the missing RPM macro,
and correcting a defect in the way the prelink image class was working
with the necessary configuration file.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/image-prelink.bbclass           |    2 +-
 meta/recipes-devtools/prelink/prelink_git.bb |    8 +++++---
 meta/recipes-devtools/rpm/rpm_5.4.0.bb       |    3 ++-
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/meta/classes/image-prelink.bbclass b/meta/classes/image-prelink.bbclass
index faf1814..ee0951c 100644
--- a/meta/classes/image-prelink.bbclass
+++ b/meta/classes/image-prelink.bbclass
@@ -24,7 +24,7 @@ prelink_image () {
 	${STAGING_DIR_NATIVE}/usr/sbin/prelink --root ${IMAGE_ROOTFS} -amR
 
 	# Remove the prelink.conf if we had to add it.
-	if [ $dummy_prelink_conf ]; then
+	if [ "$dummy_prelink_conf" == "true" ]; then
 		rm -f ${IMAGE_ROOTFS}/etc/prelink.conf
 	fi
 
diff --git a/meta/recipes-devtools/prelink/prelink_git.bb b/meta/recipes-devtools/prelink/prelink_git.bb
index 53ef045..e8abf59 100644
--- a/meta/recipes-devtools/prelink/prelink_git.bb
+++ b/meta/recipes-devtools/prelink/prelink_git.bb
@@ -8,12 +8,13 @@ runtime and thus programs come up faster."
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 PV = "1.0+git${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "git://git.pokylinux.org/prelink-cross.git;protocol=git \
            file://prelink.conf \
            file://prelink.cron.daily \
-           file://prelink.default"
+           file://prelink.default \
+	   file://macros.prelink"
 
 TARGET_OS_ORIG := "${TARGET_OS}"
 OVERRIDES_append = ":${TARGET_OS_ORIG}"
@@ -33,10 +34,11 @@ do_configure_prepend () {
 }
 
 do_install_append () {
-	install -d ${D}${sysconfdir}/cron.daily ${D}${sysconfdir}/default
+	install -d ${D}${sysconfdir}/cron.daily ${D}${sysconfdir}/default ${D}${sysconfdir}/rpm
 	install -m 0644 ${WORKDIR}/prelink.conf ${D}${sysconfdir}/prelink.conf
 	install -m 0644 ${WORKDIR}/prelink.cron.daily ${D}${sysconfdir}/cron.daily/prelink
 	install -m 0644 ${WORKDIR}/prelink.default ${D}${sysconfdir}/default/prelink
+	install -m 0644 ${WORKDIR}/macros.prelink ${D}${sysconfdir}/rpm/macros.prelink
 }
 
 pkg_postinst_prelink() {
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 8bce395..e350150 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -74,7 +74,8 @@ inherit autotools gettext
 acpaths = "-I ${S}/db/dist/aclocal -I ${S}/db/dist/aclocal_java"
 
 # Specify the default rpm macros in terms of adjustable variables
-rpm_macros = "%{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:~/.oerpmmacros"
+rpm_macros = "%{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:%{_etcrpm}/macros.*:%{_etcrpm}/macros:%{_etcrpm}/%{_target}/macros:~/.oerpmmacros"
+rpm_macros_virtclass-native = "%{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:~/.oerpmmacros"
 
 # Configure values taken from rpm.spec
 WITH_BZIP2 = "--with-bzip2"
-- 
1.7.3.4


