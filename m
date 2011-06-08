Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 790054C80188
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 05:49:38 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p58AnbaK003121
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Jun 2011 03:49:37 -0700 (PDT)
Received: from localhost (128.224.162.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 8 Jun 2011 03:49:37 -0700
Message-ID: <6bb2dd015f0d907e1a2856a49b72af8ef1a03d43.1307529994.git.kai.kang@windriver.com>
In-Reply-To: <cover.1307529994.git.kai.kang@windriver.com>
References: <cover.1307529994.git.kai.kang@windriver.com>
Old-Date: Tue, 7 Jun 2011 16:29:41 +0800
Date: Wed, 8 Jun 2011 18:49:37 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.154]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] ghostscript: update SRC_URI
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
X-List-Received-Date: Wed, 08 Jun 2011 10:49:38 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Build ghostscript-native fails on a i686 machine because it can't get
the source objarch.h and soobjarch.h, and .h files are not needed for
native package, so update the SRC_URI to fix it.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../ghostscript/ghostscript_9.02.bb                |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/ghostscript/ghostscript_9.02.bb b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
index e3d32dd..bee5684 100644
--- a/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
+++ b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
@@ -15,17 +15,20 @@ SECTION = "console/utils"
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=d151214b3131251dfc9d858593acbd24"
 
-PR = "r1"
+PR = "r2"
 
 DEPENDS = "${PN}-native tiff jpeg fontconfig cups"
 DEPENDS_virtclass-native = ""
 
-SRC_URI = "http://downloads.ghostscript.com/public/ghostscript-${PV}.tar.bz2 \
+SRC_URI_BASE = "http://downloads.ghostscript.com/public/ghostscript-${PV}.tar.bz2"
+
+SRC_URI = "${SRC_URI_BASE} \
            file://ghostscript-9.02-prevent_recompiling.patch \
            file://ghostscript-9.02-genarch.patch \
            file://objarch.h \
            file://soobjarch.h \
            "
+SRC_URI_virtclass-native = "${SRC_URI_BASE}"
 
 SRC_URI[md5sum] = "f67151444bd56a7904579fc75a083dd6"
 SRC_URI[sha256sum] = "03ea2cad13a36f8f9160912012b79619a826e7148fada6d3531feb25409ee05a"
-- 
1.7.5.1.300.gc565c


