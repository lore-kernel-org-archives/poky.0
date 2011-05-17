Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B30D34C80ACB
	for <poky@yoctoproject.org>; Tue, 17 May 2011 01:02:29 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H62TqP020923
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 16 May 2011 23:02:29 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 16 May 2011 23:02:28 -0700
Message-ID: <43c7d5075509571933a78b0de5cba7e5196af103.1305611792.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305611792.git.xiaofeng.yan@windriver.com>
References: <cover.1305611792.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 17 May 2011 13:46:14 +0800
Date: Tue, 17 May 2011 14:01:22 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 2/3] lsbsetup: Add a link for lsb test
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
X-List-Received-Date: Tue, 17 May 2011 06:02:29 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Link /usr/lib/sendmail to /usr/sbin/sendmail

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup_0.9.bb |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
index b0d0a3f..f3651e2 100644
--- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
+++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "auto-setup environment for lsb test"
 SECTION = "console/utils"
 PRIORITY = "required"
 LICENSE = "GPLv2"
-PR = "r2"
+PR = "r3"
 
 LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
 
@@ -17,7 +17,9 @@ do_install() {
         install -d  ${D}/usr/lib/lsb
         ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/install_initd
         ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/remove_initd
-        ln -sf ${base_sbindir}/sendmail ${D}/${libdir}/lsb/sendmail
+        ln -sf ${sbindir}/sendmail ${D}/${libdir}/sendmail
 }
 
-FILES_${PN} += "${libdir}/lsb"
+FILES_${PN} += "${libdir}/lsb \
+               ${libdir}/* \
+               "
-- 
1.7.0.4


