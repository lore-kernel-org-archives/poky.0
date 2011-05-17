Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABBB84C80AB8
	for <poky@yoctoproject.org>; Tue, 17 May 2011 01:02:33 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H62Xln020932
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 16 May 2011 23:02:33 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 16 May 2011 23:02:32 -0700
Message-ID: <d389b0202de554420fb6abbe07ce3e1f2f875514.1305611792.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305611792.git.xiaofeng.yan@windriver.com>
References: <cover.1305611792.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 17 May 2011 13:49:29 +0800
Date: Tue, 17 May 2011 14:01:26 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 3/3] task-core-lsb: Add libQtOpenGL.so* library to lsb-image
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
X-List-Received-Date: Tue, 17 May 2011 06:02:33 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The library libQtOpenGL.so* is needed by LSB Test Suite.
So I add them to lsb-image for platform emenlow and mpc8315e.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index 6de24b4..d9b358d 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -3,7 +3,7 @@
 #
 
 DESCRIPTION = "Create Small Image Tasks"
-PR = "r3"
+PR = "r4"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
@@ -177,6 +177,13 @@ RDEPENDS_task-core-lsb-graphic-add_atom-pc = "\
 RDEPENDS_task-core-lsb-graphic-add_qemuppc = "\
     libqtopengl4 \
 "
+RDEPENDS_task-core-lsb-graphic-add_emenlow = "\
+    libqtopengl4 \
+"
+
+RDEPENDS_task-core-lsb-graphic-add_mpc8315e-rdb = "\
+    libqtopengl4 \
+"
 
 #    mesa-dri 
 
-- 
1.7.0.4


