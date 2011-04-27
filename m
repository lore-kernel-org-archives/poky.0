Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E32584C80852
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 04:29:32 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3R9TW8O013662
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 02:29:32 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 27 Apr 2011 02:29:31 -0700
Message-ID: <8924c9d60a2f03478c9b18ba54bad461d91553b8.1303895739.git.kai.kang@windriver.com>
In-Reply-To: <cover.1303895739.git.kai.kang@windriver.com>
References: <cover.1303895739.git.kai.kang@windriver.com>
Old-Date: Wed, 27 Apr 2011 15:44:45 +0800
Date: Wed, 27 Apr 2011 17:30:08 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/3] groff: update to 1.20.1
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
X-List-Received-Date: Wed, 27 Apr 2011 09:29:33 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Update groff to 1.20.1, add SUMMARY and LICENSE info
From OE 70bf94cd8669f549ca90581e9592d409b6e24e2e
Fixes [Yocto 879]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/groff/groff_1.20.1.bb |   36 +++++++++++++++++++++++++++
 1 files changed, 36 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/groff/groff_1.20.1.bb

diff --git a/meta/recipes-extended/groff/groff_1.20.1.bb b/meta/recipes-extended/groff/groff_1.20.1.bb
new file mode 100644
index 0000000..e0e198f
--- /dev/null
+++ b/meta/recipes-extended/groff/groff_1.20.1.bb
@@ -0,0 +1,36 @@
+SUMMARY = "GNU Troff software"
+DESCRIPTION = "The groff (GNU troff) software is a typesetting package which reads plain text mixed with \
+formatting commands and produces formatted output."
+SECTION = "base"
+HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
+LICENSE = "GPLv2"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+SRC_URI = "${GNU_MIRROR}/groff/groff-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "48fa768dd6fdeb7968041dd5ae8e2b02"
+SRC_URI[sha256sum] = "b645878135cb620c6c417c5601bfe96172245af12045540d7344938b4c2cd805"
+
+DEPENDS = "groff-native"
+DEPENDS_virtclass-native = ""
+
+inherit autotools
+
+PARALLEL_MAKE = ""
+
+do_configure_prepend() {
+	if [ "${BUILD_SYS}" != "${HOST_SYS}" ]; then
+		sed -i \
+		    -e '/^GROFFBIN=/s:=.*:=${STAGING_BINDIR_NATIVE}/groff:' \
+		    -e '/^TROFFBIN=/s:=.*:=${STAGING_BINDIR_NATIVE}/troff:' \
+		    -e '/^GROFF_BIN_PATH=/s:=.*:=${STAGING_BINDIR_NATIVE}:' \
+		    -e '/^GROFF_BIN_DIR=/s:=.*:=${STAGING_BINDIR_NATIVE}:' \
+		    ${S}/contrib/*/Makefile.sub \
+		    ${S}/doc/Makefile.in \
+		    ${S}/doc/Makefile.sub
+	fi
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


