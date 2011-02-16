Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 911E74C8006D
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 22:33:09 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5D436308F9
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:33:00 -0500 (EST)
Message-Id: <c46532cff59abda73958e406b9f6aff4faf76fc5.1297830466.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297830466.git.scott.a.garman@intel.com>
References: <cover.1297830466.git.scott.a.garman@intel.com>
Old-Date: Mon, 7 Feb 2011 18:43:41 -0800
Date: Tue, 15 Feb 2011 20:32:57 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5D436308F9.53019
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/5] texinfo: recipe cleanup, add native support
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
X-List-Received-Date: Wed, 16 Feb 2011 04:33:09 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/texinfo/texinfo_4.13a.bb |   26 +++++++++++++----------
 1 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/meta/recipes-extended/texinfo/texinfo_4.13a.bb b/meta/recipes-extended/texinfo/texinfo_4.13a.bb
index be10c26..ac89b66 100644
--- a/meta/recipes-extended/texinfo/texinfo_4.13a.bb
+++ b/meta/recipes-extended/texinfo/texinfo_4.13a.bb
@@ -1,29 +1,31 @@
-DESCRIPTION = "Texinfo is a documentation system that can produce both online \
-information and printed output from a single source file. The GNU \
-Project uses the Texinfo file format for most of its documentation."
-
-SECTION = "console/utils"
+SUMMARY = "Documentation system for on-line information and printed output"
+DESCRIPTION = "Texinfo is a documentation system that can produce both \
+online information and printed output from a single source file. The \
+GNU Project uses the Texinfo file format for most of its documentation."
 HOMEPAGE = "http://www.gnu.org/software/texinfo/"
+SECTION = "console/utils"
 PRIORITY = "required"
-LICENSE = "GPLV3+"
-PR = "r0"
-
+LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=adefda309052235aa5d1e99ce7557010"
+PR = "r0"
 
-DEPENDS  = "zlib"
+DEPENDS = "zlib"
 
-SRC_URI = "http://ftp.gnu.org/gnu/texinfo/texinfo-${PV}.tar.gz \
+SRC_URI = "${GNU_MIRROR}/texinfo/texinfo-${PV}.tar.gz \
            file://texinfo-4.12-zlib.patch;striplevel=1 \
            file://texinfo-4.13a-data_types.patch;striplevel=1 \
            file://texinfo-4.13a-mosdo-crash.patch;striplevel=1 \
            file://texinfo-4.13a-powerpc.patch;striplevel=1 \
            file://texinfo-4.13a-help-index-segfault.patch;striplevel=1"
 
-inherit gettext autotools
+SRC_URI[md5sum] = "71ba711519209b5fb583fed2b3d86fcb"
+SRC_URI[sha256sum] = "1303e91a1c752b69a32666a407e9fbdd6e936def4b09bc7de30f416301530d68"
 
 S = ${WORKDIR}/texinfo-4.13
 tex_texinfo = "texmf/tex/texinfo"
 
+inherit gettext autotools
+
 do_configure() {
 	oe_runconf
 }
@@ -55,3 +57,5 @@ FILES_${PN}-doc = "${datadir}/texinfo ${infodir}/texinfo* \
                    ${mandir}/man1/texindex.1* ${mandir}/man1/texi2dvi.1* \
                    ${mandir}/man1/texi2pdf.1* ${mandir}/man1/pdftexi2dvi.1*"
 FILES_${PN}-dbg = "${bindir}/.debug/texindex ${bindir}/.debug/makeinfo"
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


