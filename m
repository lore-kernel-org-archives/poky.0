Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB6FD4C81001
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 03:53:08 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBL9r8CD005769
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:53:08 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 21 Dec 2010 01:53:07 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 21 Dec 2010 01:53:07 -0800
Message-Id: <93ea0cf9da90f4bf98380e31b5912730a22377a1.1292925066.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1292925066.git.jingdong.lu@windriver.com>
References: <cover.1292925066.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Tue, 21 Dec 2010 17:49:20 +0800
Date: Tue, 21 Dec 2010 17:54:40 +0800
To: poky@yoctoproject.org
X-OriginalArrivalTime: 21 Dec 2010 09:53:07.0931 (UTC)
	FILETIME=[DEB8D2B0:01CBA0F4]
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
X-List-Received-Date: Tue, 21 Dec 2010 09:53:08 -0000

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/mailx/mailx_12.4.bb |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb

diff --git a/meta/recipes-extended/mailx/mailx_12.4.bb b/meta/recipes-extended/mailx/mailx_12.4.bb
new file mode 100644
index 0000000..eb8109a
--- /dev/null
+++ b/meta/recipes-extended/mailx/mailx_12.4.bb
@@ -0,0 +1,18 @@
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
+do_install() {
+       make DESTDIR=${D} PREFIX=/usr UCBINSTALL=install install
+}
-- 
1.7.0.4


