Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20EB74C80FFE
	for <poky@yoctoproject.org>; Thu, 12 May 2011 06:00:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4CB0maM027969
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 12 May 2011 04:00:48 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 12 May 2011 04:00:48 -0700
Message-ID: <fd55b22abd124d3c0e3dccc70c0c933ac7d8e18e.1305193086.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305193086.git.xiaofeng.yan@windriver.com>
References: <cover.1305193086.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 12 May 2011 17:23:15 +0800
Date: Thu, 12 May 2011 19:00:04 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] Qt4OpenGL: Enable libopengl for platform emenlow and mpc8315e-rdb
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
X-List-Received-Date: Thu, 12 May 2011 11:00:49 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

LSB Test Suite need library libQtOpenGL.*, so I add them to yocto. It is a part of the solution for bug [YOCTO #1020]
After Intel enable this configuration for x86-64 hardware, [YOCTO #1020] can be closed.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 .../recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend     |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
index 076ade2..e5911e3 100644
--- a/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
+++ b/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
@@ -1,2 +1,3 @@
 QT_GLFLAGS_atom-pc = "-opengl"
-
+QT_GLFLAGS_mpc8315e-rdb = "-opengl"
+QT_GLFLAGS_emenlow = "-opengl"
-- 
1.7.0.4


