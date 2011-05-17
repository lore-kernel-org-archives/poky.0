Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11CD74C80AB4
	for <poky@yoctoproject.org>; Tue, 17 May 2011 01:02:26 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H62PRN020902
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 16 May 2011 23:02:25 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 16 May 2011 23:02:24 -0700
Message-ID: <84fa5e56cc957ef2cb9a5e2f5ba055cb6f488bb0.1305611792.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305611792.git.xiaofeng.yan@windriver.com>
References: <cover.1305611792.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 17 May 2011 13:40:07 +0800
Date: Tue, 17 May 2011 14:01:18 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/3] lsb: Install init-functions to rpm package
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
X-List-Received-Date: Tue, 17 May 2011 06:02:26 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The script init-functions can't be built into rpm package of lsb.
I modify lsb_1.4.bb to add this script to rpm package of lsb.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsb_1.4.bb |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsb_1.4.bb b/meta/recipes-extended/lsb/lsb_1.4.bb
index 166ba4c..fd0f12c 100644
--- a/meta/recipes-extended/lsb/lsb_1.4.bb
+++ b/meta/recipes-extended/lsb/lsb_1.4.bb
@@ -3,7 +3,7 @@ SECTION = "console/utils"
 HOMEPAGE = "http://prdownloads.sourceforge.net/lsb"
 PRIORITY = "required"
 LICENSE = "GPLv2+"
-PR = "r0"
+PR = "r1"
 
 LIC_FILES_CHKSUM = "file://README;md5=12da544b1a3a5a1795a21160b49471cf"
 
@@ -94,4 +94,6 @@ do_install_append(){
                ln -sf ld.so.1 ld-lsb-ppc32.so.3
        fi	
 }
-FILES_${PN} += "/lib64"
+FILES_${PN} += "/lib64 \
+                ${base_libdir}/lsb/* \
+               "
-- 
1.7.0.4


