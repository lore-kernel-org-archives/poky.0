Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2B364C80A53
	for <poky@yoctoproject.org>; Wed, 11 May 2011 03:09:37 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4B89b1n019650
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:09:37 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 11 May 2011 01:09:36 -0700
Message-ID: <778a0ace12f6be23a48cde601c64fdb209bf4416.1305016641.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305016641.git.xiaofeng.yan@windriver.com>
References: <cover.1305016641.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 10 May 2011 16:28:58 +0800
Date: Wed, 11 May 2011 16:08:58 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/3] wq!lsb: Add init-functions to lsb-image
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
X-List-Received-Date: Wed, 11 May 2011 08:09:38 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

init-functions is needed by LSB Test Suite.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsb_1.4.bb |   39 +++++++++++++++++++++------------
 1 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsb_1.4.bb b/meta/recipes-extended/lsb/lsb_1.4.bb
index 17fb0e7..166ba4c 100644
--- a/meta/recipes-extended/lsb/lsb_1.4.bb
+++ b/meta/recipes-extended/lsb/lsb_1.4.bb
@@ -7,7 +7,13 @@ PR = "r0"
 
 LIC_FILES_CHKSUM = "file://README;md5=12da544b1a3a5a1795a21160b49471cf"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/lsb/lsb_release/${PV}/lsb-release-${PV}.tar.gz"
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/lsb/lsb_release/${PV}/lsb-release-${PV}.tar.gz \
+           file://init-functions \
+           file://lsb_killproc \
+           file://lsb_log_message \
+           file://lsb_pidofproc \
+           file://lsb_start_daemon \
+           "
 
 SRC_URI[md5sum] = "30537ef5a01e0ca94b7b8eb6a36bb1e4"
 SRC_URI[sha256sum] = "99321288f8d62e7a1d485b7c6bdccf06766fb8ca603c6195806e4457fdf17172"
@@ -18,45 +24,50 @@ do_install(){
 	mkdir -p ${D}/bin
 	mkdir -p ${D}/lib
 	mkdir -p ${D}/etc/lsb-release.d
-	echo -n "LSB_VERSION=\"core-2.0-noarch:core-3.2-noarch:core-4.0-noarch:" > ${D}/etc/lsb-release
+	echo -n "LSB_VERSION=\"core-4.1-noarch:" > ${D}/etc/lsb-release
 	
 	if [ "${TARGET_ARCH}" == "i586" ];then
-		echo -n "core-2.0-ia32:core-3.2-ia32:core-4.0-ia32" >>  ${D}/etc/lsb-release
+		echo -n "core-4.1-ia32" >>  ${D}/etc/lsb-release
 	else
-		echo -n "core-2.0-${TARGET_ARCH}:core-3.2-${TARGET_ARCH}:core-4.0-${TARGET_ARCH}" >>  ${D}/etc/lsb-release
+		echo -n "core-4.1-${TARGET_ARCH}" >>  ${D}/etc/lsb-release
 	fi
 	echo "\"" >> ${D}/etc/lsb-release
 	
 	if [ "${TARGET_ARCH}" == "i586" ];then
 		mkdir -p ${D}/etc/lsb-release.d
-		touch ${D}/etc/lsb-release.d/graphics-2.0-noarch
-		touch ${D}/etc/lsb-release.d/graphics-3.2-noarch
+		touch ${D}/etc/lsb-release.d/graphics-4.1-noarch
 		touch ${D}/etc/lsb-release.d/graphics-${PV}-noarch
 		touch ${D}/etc/lsb-release.d/desktop-${PV}-noarch
-		touch ${D}/etc/lsb-release.d/graphics-2.0-ia32
-		touch ${D}/etc/lsb-release.d/graphics-3.2-ia32
+		touch ${D}/etc/lsb-release.d/graphics-4.1-ia32
 		touch ${D}/etc/lsb-release.d/graphics-${PV}-ia32
 		touch ${D}/etc/lsb-release.d/desktop-${PV}-ia32
 	elif [ "${TARGET_ARCH}" == "x86_64" ];then
-		touch ${D}/etc/lsb-release.d/graphics-2.0-amd64
-		touch ${D}/etc/lsb-release.d/graphics-3.2-amd64
+		touch ${D}/etc/lsb-release.d/graphics-4.1-noarch
+		touch ${D}/etc/lsb-release.d/graphics-4.1-amd64
 		touch ${D}/etc/lsb-release.d/graphics-${PV}-amd64
 		touch ${D}/etc/lsb-release.d/desktop-${PV}-amd64
 	fi
 	if [ "${TARGET_ARCH}" = "powerpc" ];then
-		touch ${D}/etc/lsb-release.d/graphics-2.0-ppc32
-		touch ${D}/etc/lsb-release.d/graphics-3.2-ppc32
+		touch ${D}/etc/lsb-release.d/graphics-4.1-noarch
+		touch ${D}/etc/lsb-release.d/graphics-4.1-ppc32
 		touch ${D}/etc/lsb-release.d/graphics-${PV}-ppc32
 		touch ${D}/etc/lsb-release.d/desktop-${PV}-ppc32
 	elif [ "${TARGET_ARCH}" = "powerpc64" ];then
-		touch ${D}/etc/lsb-release.d/graphics-2.0-ppc64
-		touch ${D}/etc/lsb-release.d/graphics-3.2-ppc64
+		touch ${D}/etc/lsb-release.d/graphics-4.1-noarch
+		touch ${D}/etc/lsb-release.d/graphics-4.1-ppc64
 		touch ${D}/etc/lsb-release.d/graphics-${PV}-ppc64
 		touch ${D}/etc/lsb-release.d/desktop-${PV}-ppc64
 	fi
 }
 
 do_install_append(){
+       install -d ${D}/etc/core-lsb
+       install -d ${D}/lib/lsb
+       for i in lsb_killproc lsb_log_message lsb_pidofproc lsb_start_daemon
+       do
+           install -m 0755 ${WORKDIR}/${i} ${D}/etc/core-lsb
+       done
+       install -m 0755 ${WORKDIR}/init-functions ${D}/lib/lsb
        if [ "${TARGET_ARCH}" == "x86_64" ];then
 	       cd ${D}
 	       ln -sf lib lib64
-- 
1.7.0.4


