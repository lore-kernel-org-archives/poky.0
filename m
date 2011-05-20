Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E68CD4C804C2
	for <poky@yoctoproject.org>; Fri, 20 May 2011 07:29:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4KCT5rF003436
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 20 May 2011 05:29:05 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 05:29:05 -0700
Message-ID: <8aae00c1c51aface54052fbcf71ececd2c47c63a.1305894267.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305894267.git.xiaofeng.yan@windriver.com>
References: <cover.1305894267.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 20 May 2011 20:18:26 +0800
Date: Fri, 20 May 2011 20:27:42 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] task-core-lsb: Add library libQtOpenGL* to n450, sugarbay and jasperforest
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
X-List-Received-Date: Fri, 20 May 2011 12:29:06 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

For passing hardware test for LSB, I add libQtOpenGL* to three platforms above.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 .../recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend     |    3 +++
 meta/recipes-extended/tasks/task-core-lsb.bb       |   10 ++++++++++
 2 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
index e5911e3..172f090 100644
--- a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
+++ b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend
@@ -1,3 +1,6 @@
 QT_GLFLAGS_atom-pc = "-opengl"
 QT_GLFLAGS_mpc8315e-rdb = "-opengl"
 QT_GLFLAGS_emenlow = "-opengl"
+QT_GLFLAGS_jasperforest = "-opengl"
+QT_GLFLAGS_n450 = "-opengl"
+QT_GLFLAGS_sugarbay  = "-opengl"
diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index b6c5ae5..63ea7dd 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -187,6 +187,16 @@ RDEPENDS_task-core-lsb-graphic-add_mpc8315e-rdb = "\
     libqtopengl4 \
 "
 
+RDEPENDS_task-core-lsb-graphic-add_append_n450 = "\
+    libqtopengl4 \
+"
+RDEPENDS_task-core-lsb-graphic-add_append_sugarbay = "\
+    libqtopengl4 \
+"
+RDEPENDS_task-core-lsb-graphic-add_append_jasperforest = "\
+    libqtopengl4 \
+"
+
 #    mesa-dri 
 
 RDEPENDS_task-core-lsb-runtime-add = "\
-- 
1.7.0.4


