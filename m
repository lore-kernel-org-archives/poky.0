Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76AF64C80132
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 20:43:09 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2O1h83s022616
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 18:43:08 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 23 Mar 2011 18:43:08 -0700
Message-ID: <4b81ca43c89c79ae76ac14c36335446b7d2eccde.1300874241.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300874241.git.kai.kang@windriver.com>
References: <cover.1300874241.git.kai.kang@windriver.com>
Old-Date: Wed, 23 Mar 2011 17:52:53 +0800
Date: Thu, 24 Mar 2011 09:43:09 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/1] libjpeg-turbo: add libjpeg-turbo for LSB lib test
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
X-List-Received-Date: Thu, 24 Mar 2011 01:43:09 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB 4.1 library test will check libjpeg.so.62, and
libjpeg-turbo provide it.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../libjpeg-turbo/libjpeg-turbo_1.1.0.bb           |   23 ++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb

diff --git a/meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb b/meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb
new file mode 100644
index 0000000..1948a5d
--- /dev/null
+++ b/meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb
@@ -0,0 +1,23 @@
+SUMMARY = "A MMX/SSE2 accelerated library for manipulating JPEG image files"
+
+DESCRIPTION = "libjpeg-turbo is a version of libjpeg which uses MMX, SSE, and \
+SSE2 SIMD instructions to accelerate baseline JPEG compression/decompression \
+by about 2-4x on x86 and x86-64 platforms. It is based on libjpeg/SIMD \
+but has numerous enhancements."
+
+DEPENDS = "nasm-native"
+
+PR = "r0"
+
+LICENSE = "wxWidgets"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=8b3f4d426b97ea335b053353f9f220b2"
+
+SRC_URI = "http://downloads.sourceforge.net/${PN}/${PN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "83e6914a281d649ad289445dc20f9de4"
+SRC_URI[sha256sum] = "1e24fd7c58b64f4c0f5f559d88d43bbe40e47000a573ad215e47f75da88ac244"
+
+PACKAGES =+ "${PN}-utils "
+FILES_${PN}-utils = "${bindir}/*"
+
+inherit autotools
-- 
1.7.1


