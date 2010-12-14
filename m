Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFEE94C811FC
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 03:02:44 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBE92il0001786
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 01:02:44 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 14 Dec 2010 01:02:44 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 14 Dec 2010 01:02:43 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
Date: Tue, 14 Dec 2010 17:04:05 +0800
Message-ID: <1292317445.2240.2.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 14 Dec 2010 09:02:44.0088 (UTC)
	FILETIME=[AB7ABF80:01CB9B6D]
Subject: [PATCH 10/10] mailx: Add mailx
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
X-List-Received-Date: Tue, 14 Dec 2010 09:02:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Subject: [PATCH 10/10] mailx: Add mailx

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/mailx/mailx_12.4.bb |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb

diff --git a/meta/recipes-extended/mailx/mailx_12.4.bb
b/meta/recipes-extended/mailx/mailx_12.4.bb
new file mode 100644
index 0000000..ffda949
--- /dev/null
+++ b/meta/recipes-extended/mailx/mailx_12.4.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "Mailx is an enhanced mail command, which provides the
functionality \
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
+LIC_FILES_CHKSUM =
"file://COPYING;md5=4202a0a62910cf94f7af8a3436a2a2dd"
+
+SRC_URI = "http://downloads.sourceforge.net/heirloom/mailx-12.4.tar.bz2
\
+          "
+
+#inherit autotools gettext
+
+do_install() {
+       make DESTDIR=${D} PREFIX=/usr UCBINSTALL=install install
+}
-- 
1.7.0.4
-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


