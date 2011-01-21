Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A91B4C811B1
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:40:07 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L9e7WP007647
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:40:07 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:40:06 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 21 Jan 2011 01:40:06 -0800
Message-Id: <8b84d4ddc27a4c3ad5b82cae3ed85209f14a1749.1295602319.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295602319.git.jingdong.lu@windriver.com>
References: <cover.1295602319.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Fri, 21 Jan 2011 17:27:03 +0800
Date: Fri, 21 Jan 2011 17:38:48 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 21 Jan 2011 09:40:07.0314 (UTC)
	FILETIME=[303E5F20:01CBB94F]
Subject: [PATCH 1/2] base-files: Add to make some directories needed by LSB.
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
X-List-Received-Date: Fri, 21 Jan 2011 09:40:07 -0000

LSB will check some directories,eg, "/usr/local/" and need to make them for LSB test.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-core/base-files/base-files_3.0.14.bb |   18 +++++++++++++++++-
 1 files changed, 17 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/base-files/base-files_3.0.14.bb b/meta/recipes-core/base-files/base-files_3.0.14.bb
index 0557696..2363feb 100644
--- a/meta/recipes-core/base-files/base-files_3.0.14.bb
+++ b/meta/recipes-core/base-files/base-files_3.0.14.bb
@@ -2,7 +2,7 @@ SUMMARY = "Miscellaneous files for the base system."
 DESCRIPTION = "The base-files package creates the basic system directory structure and provides a small set of key configuration files for the system."
 SECTION = "base"
 PRIORITY = "required"
-PR = "r65"
+PR = "r66"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://licenses/GPL-2;md5=94d55d512a9ba36caa9b7df079bae19f"
 SRC_URI = "file://rotation \
@@ -48,6 +48,12 @@ dirs755 = "/bin /boot /dev ${sysconfdir} ${sysconfdir}/default \
            /mnt /media /media/card /media/cf /media/net /media/ram \
            /media/union /media/realroot /media/hdd \
            /media/mmc1"
+dirs3755 = "/srv  \
+            ${prefix}/local ${prefix}/local/bin ${prefix}/local/games \
+            ${prefix}/local/include ${prefix}/local/lib ${prefix}/local/sbin \
+            ${prefix}/local/share ${prefix}/local/src"
+dirs4775 = "/var/mail"
+
 volatiles = "cache run log lock tmp"
 conffiles = "${sysconfdir}/debian_version ${sysconfdir}/host.conf \
              ${sysconfdir}/inputrc ${sysconfdir}/issue /${sysconfdir}/issue.net \
@@ -156,6 +162,16 @@ do_install_append_netbook-pro () {
 	mkdir -p ${D}/initrd
 }
 
+do_install_append_poky-lsb() {
+	for d in ${dirs3755}; do
+                install -m 0755 -d ${D}$d
+        done
+
+	for d in ${dirs4775}; do
+                install -m 2755 -d ${D}$d
+        done
+}
+
 PACKAGES = "${PN}-doc ${PN} ${PN}-dev ${PN}-dbg"
 FILES_${PN} = "/"
 FILES_${PN}-doc = "${docdir} ${datadir}/common-licenses"
-- 
1.7.0.4


