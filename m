Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A79B54C811F5
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 01:38:11 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0U7cBZ1017718
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 23:38:11 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 29 Jan 2011 23:38:10 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 29 Jan 2011 23:38:10 -0800
Message-Id: <c7395ab9267dfda2e1aee84fef98fbd6bfcc7a49.1296372804.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1296372804.git.jingdong.lu@windriver.com>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
Old-Date: Sun, 30 Jan 2011 14:53:32 +0800
Date: Sun, 30 Jan 2011 15:36:29 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 30 Jan 2011 07:38:10.0831 (UTC)
	FILETIME=[A4FF69F0:01CBC050]
Subject: [PATCH 3/5] msmtp: add msmtp 1.4.23
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
X-List-Received-Date: Sun, 30 Jan 2011 07:38:11 -0000

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


