Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB9484C80AAF
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 22:15:16 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3S3FG1C016828
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 20:15:16 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 27 Apr 2011 20:15:15 -0700
Message-ID: <c774a4c224074cad8c4938cf655190822b5cfc5f.1303960219.git.kai.kang@windriver.com>
In-Reply-To: <cover.1303960219.git.kai.kang@windriver.com>
References: <cover.1303960219.git.kai.kang@windriver.com>
Old-Date: Wed, 27 Apr 2011 16:16:46 +0800
Date: Thu, 28 Apr 2011 11:16:04 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 2/3] lsbsetup: add commands install_initd and remove_initd
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
X-List-Received-Date: Thu, 28 Apr 2011 03:15:17 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add commands install_initd and remove_initd link to chkconfig, which
can handler LSB format init.d scripts. Needed by LSB commands check.
Bump PR to r2
Part fixes [Yocto 520]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup_0.9.bb |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
index 5fd0584..8f7da53 100644
--- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
+++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "auto-setup environment for lsb test"
 SECTION = "console/utils"
 PRIORITY = "required"
 LICENSE = "GPLv2"
-PR = "r1"
+PR = "r2"
 
 LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
 
@@ -14,4 +14,9 @@ do_install() {
         # Only install file if it has a contents
         install -d ${D}/usr/bin
         install -m 0755 ${S}/LSB_Setup.sh ${D}/usr/bin
+        install -d  ${D}/usr/lib/lsb
+        ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/install_initd
+        ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/remove_initd
 }
+
+FILES_${PN} += "${libdir}/lsb"
-- 
1.7.1


