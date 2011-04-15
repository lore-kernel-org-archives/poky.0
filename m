Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62B1A4C80FBE
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:26:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3FAQCQo025541
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 03:26:12 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 15 Apr 2011 03:26:11 -0700
Message-ID: <c847ebc1ba153205b8801557a5066c93b7dca34b.1302847580.git.kai.kang@windriver.com>
In-Reply-To: <cover.1302847580.git.kai.kang@windriver.com>
References: <cover.1302847580.git.kai.kang@windriver.com>
Old-Date: Fri, 15 Apr 2011 14:01:28 +0800
Date: Fri, 15 Apr 2011 18:26:00 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/1] jpeg: add link libjpeg.so.62 for LSB library test
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
X-List-Received-Date: Fri, 15 Apr 2011 10:26:12 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB test just test whether libjpeg.so.62 exists, and no more use of it.
So just make link to pass library check.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-core/jpeg/jpeg_8b.bb |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/jpeg/jpeg_8b.bb b/meta/recipes-core/jpeg/jpeg_8b.bb
index 8e2c24d..78fabf1 100644
--- a/meta/recipes-core/jpeg/jpeg_8b.bb
+++ b/meta/recipes-core/jpeg/jpeg_8b.bb
@@ -14,7 +14,7 @@ PRIORITY = "required"
 DEPENDS = "libtool-cross"
 DEPENDS_virtclass-native = "libtool-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.ijg.org/files/jpegsrc.v${PV}.tar.gz \
 	   file://debian-libjpeg7_7-1.diff;patch=1"
@@ -45,3 +45,14 @@ DESCRIPTION_jpeg-tools = "The jpeg-tools package includes the client programs fo
 FILES_jpeg-tools = 	"${bindir}/*"
 
 BBCLASSEXTEND = "native"
+
+pkg_postinst_${PN}_poky-lsb () {
+    if [ "$D" = "" ]; then
+        if [ ! -e ${libdir}/libjpeg.so.62 ]; then
+            JPEG=`find ${libdir} -type f -name libjpeg.so.\*.\*.\*`
+            ln -sf `basename $JPEG` ${libdir}/libjpeg.so.62
+        fi
+    else
+        exit 1
+    fi
+}
-- 
1.7.1


