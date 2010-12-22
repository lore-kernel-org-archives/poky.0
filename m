Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B25AF4C8110E
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 03:44:55 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM9itlP021721
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 01:44:55 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 01:44:54 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 01:44:54 -0800
Message-Id: <f29d5ac2d1f4c0adb590e8b3212edf7199e0d526.1293011018.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1293011017.git.jingdong.lu@windriver.com>
References: <cover.1293011017.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Tue, 21 Dec 2010 17:49:20 +0800
Date: Wed, 22 Dec 2010 17:46:29 +0800
To: poky@yoctoproject.org
X-OriginalArrivalTime: 22 Dec 2010 09:44:55.0067 (UTC)
	FILETIME=[E35D7EB0:01CBA1BC]
Subject: [PATCH 3/3] mailx: Add mailx
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
X-List-Received-Date: Wed, 22 Dec 2010 09:44:55 -0000

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/mailx/mailx_12.4.bb |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb

diff --git a/meta/recipes-extended/mailx/mailx_12.4.bb b/meta/recipes-extended/mailx/mailx_12.4.bb
new file mode 100644
index 0000000..b1812a3
--- /dev/null
+++ b/meta/recipes-extended/mailx/mailx_12.4.bb
@@ -0,0 +1,23 @@
+SUMMARY = "mailx is the traditional command-line-mode \
+mail user agent."
+DESCRIPTION = "Mailx is an enhanced mail command, which provides the functionality \
+of the POSIX mailx command, as well as SysV mail and Berkeley Mail \
+(from which it is derived)."
+HOMEPAGE = "http://heirloom.sourceforge.net/mailx.html"
+SECTION = "console/network"
+
+PRIORITY = "required"
+LICENSE = "BSD with advertising and MPLv1.1"
+PR = "r0"
+
+#COPYING or Licence
+LIC_FILES_CHKSUM = "file://COPYING;md5=4202a0a62910cf94f7af8a3436a2a2dd"
+
+SRC_URI = "http://downloads.sourceforge.net/heirloom/mailx-12.4.tar.bz2 \
+          "
+SRC_URI[md5sum] = "0c93759e34200eb56a0e7c464680a54a"
+SRC_URI[sha256sum] = "92201e769fe346bc0364c87437a330ef3c97ab3e9d7b2235b93f509e85e5716a"
+
+do_install() {
+       make DESTDIR=${D} PREFIX=/usr UCBINSTALL=install install
+}
-- 
1.7.0.4


