Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7641E4C80081
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 20:43:08 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p112h8UE005663
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:43:08 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:07 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:07 -0800
Message-Id: <973c5c53e69c89000a7ea998589dd67ac2d598e9.1296527961.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1296527961.git.jingdong.lu@windriver.com>
References: <cover.1296527961.git.jingdong.lu@windriver.com>
Old-Date: Sun, 30 Jan 2011 14:44:58 +0800
Date: Tue, 01 Feb 2011 10:41:25 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 01 Feb 2011 02:43:07.0550 (UTC)
	FILETIME=[C1D89BE0:01CBC1B9]
Subject: [PATCH 1/4] mailx: add mailx 12.4
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
X-List-Received-Date: Tue, 01 Feb 2011 02:43:08 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

This package has been added from Open Embedded.
Changes from the Open Embedded version:
* Update version to 12.4(mailx has been replaced by heirloom-mailx)
* Add SUMMARY, LIC_FILES_CHKSUM
* Remove patch(install.patch)

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/mailx/mailx_12.4.bb |   26 ++++++++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb

diff --git a/meta/recipes-extended/mailx/mailx_12.4.bb b/meta/recipes-extended/mailx/mailx_12.4.bb
new file mode 100644
index 0000000..180dbe3
--- /dev/null
+++ b/meta/recipes-extended/mailx/mailx_12.4.bb
@@ -0,0 +1,26 @@
+SUMMARY = "mailx is the traditional command-line-mode mail user agent."
+
+DESCRIPTION = "Mailx is derived from Berkeley Mail and is intended provide the \
+functionality of the POSIX mailx command with additional support \
+for MIME, IMAP, POP3, SMTP, and S/MIME."
+
+HOMEPAGE = "http://heirloom.sourceforge.net/mailx.html"
+SECTION = "console/network"
+PRIORITY = "required"
+PR = "r0"
+LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4202a0a62910cf94f7af8a3436a2a2dd"
+
+SRC_URI = "${DEBIAN_MIRROR}/main/h/heirloom-mailx/heirloom-mailx_${PV}.orig.tar.gz;name=archive \
+           ${DEBIAN_MIRROR}/main/h/heirloom-mailx/heirloom-mailx_${PV}-2.diff.gz;name=patch \
+          "
+SRC_URI[archive.md5sum] = "17b8ff86795a118b199e041b66b7d1aa"
+SRC_URI[archive.sha256sum] = "946d822cbff70df2ecf5b78c8347fdd01fdc5873f7a7cf55932b3e07030fa370"
+SRC_URI[patch.md5sum] = "3233d1a85fcb4dcde689132a1bba7fc9"
+SRC_URI[patch.sha256sum] = "b15fac77973b7d787469e51bbbeae7ddbe922b02a0c23208b9779ce837eba861"
+
+S = "${WORKDIR}/mailx-${PV}"
+
+inherit autotools
+
+CFLAGS_append = " -D_BSD_SOURCE -DDEBIAN -I${S}/EXT"
-- 
1.7.0.4


