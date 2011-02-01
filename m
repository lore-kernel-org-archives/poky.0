Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C3814C8008E
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 20:43:10 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p112hAfF005666
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:43:10 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:09 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:09 -0800
Message-Id: <8343739ed1154e6c9364d05539fd2667c24f3f94.1296527961.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1296527961.git.jingdong.lu@windriver.com>
References: <cover.1296527961.git.jingdong.lu@windriver.com>
Old-Date: Sun, 30 Jan 2011 14:53:32 +0800
Date: Tue, 01 Feb 2011 10:41:28 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 01 Feb 2011 02:43:09.0675 (UTC)
	FILETIME=[C31CDBB0:01CBC1B9]
Subject: [PATCH 2/4] msmtp: add msmtp 1.4.23
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
X-List-Received-Date: Tue, 01 Feb 2011 02:43:10 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

This package has been added from Open Embedded in order to replace sendmail.
Changes from the Open Embedded version:
* Update version to 1.4.23
* Add SUMMARY, LIC_FILES_CHKSUM

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/msmtp/msmtp_1.4.23.bb |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/msmtp/msmtp_1.4.23.bb

diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
new file mode 100644
index 0000000..d72677c
--- /dev/null
+++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
@@ -0,0 +1,21 @@
+SUMMARY = "msmtp is an SMTP client."
+DESCRIPTION = "A sendmail replacement for use in MTAs like mutt"
+HOMEPAGE = "http://msmtp.sourceforge.net/"
+SECTION = "console/network"
+
+PRIORITY = "required"
+LICENSE = "GPLv3"
+DEPENDS = "zlib gnutls"
+PR = "r0"
+
+
+#COPYING or Licence
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+SRC_URI = "http://sourceforge.net/projects/msmtp/files/msmtp/${PV}/${PN}-${PV}.tar.bz2 \
+          "
+
+SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
+SRC_URI[sha256sum] = "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
+
+inherit gettext autotools
-- 
1.7.0.4


