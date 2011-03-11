Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E60C64C800A7
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 04:14:35 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2BAEZ8T014829
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 02:14:35 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 11 Mar 2011 02:14:34 -0800
Message-ID: <360bddfaa4b10910a717b56ee392f5d1088bf2f6.1299838160.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1299838160.git.xiaofeng.yan@windriver.com>
References: <cover.1299838160.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 11 Mar 2011 18:03:06 +0800
Date: Fri, 11 Mar 2011 18:11:59 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] task-poky-lsb: Add some packages required by lsb test suite
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
X-List-Received-Date: Fri, 11 Mar 2011 10:14:36 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Add packages gdk-pixbuf-loader-(bmp,ico,ani) to list task-poky-lsb.bb

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-poky-lsb.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index 42fd8e0..5e3397e 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -162,7 +162,9 @@ RDEPENDS_task-poky-lsb-graphic-add = "\
     qt4-plugin-sqldriver-sqlite \
     libx11-locale \
     xorg-minimal-fonts \
-    gdk-pixbuf \
+    gdk-pixbuf-loader-ico \
+    gdk-pixbuf-loader-bmp \
+    gdk-pixbuf-loader-ani \
 "
 
 RDEPENDS_task-poky-lsb-graphic-add_qemux86 = "\
-- 
1.7.0.4


