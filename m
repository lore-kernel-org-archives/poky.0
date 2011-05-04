Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E6C04C80FBB
	for <poky@yoctoproject.org>; Wed,  4 May 2011 06:00:14 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p44B0DiZ017165
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 4 May 2011 04:00:14 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 4 May 2011 04:00:13 -0700
Message-ID: <14d94988bd1dd3fc1707828dac9c738f0325175c.1304496956.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1304496956.git.xiaofeng.yan@windriver.com>
References: <cover.1304496956.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 4 May 2011 16:09:54 +0800
Date: Wed, 4 May 2011 19:00:09 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] qt4: Enable qt4 opengl for ppc
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
X-List-Received-Date: Wed, 04 May 2011 11:00:14 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix [# 1020]

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-qt/qt4/qt4-x11-free.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-qt/qt4/qt4-x11-free.inc b/meta/recipes-qt/qt4/qt4-x11-free.inc
index ba08dc8..a711288 100644
--- a/meta/recipes-qt/qt4/qt4-x11-free.inc
+++ b/meta/recipes-qt/qt4/qt4-x11-free.inc
@@ -13,6 +13,7 @@ QT_GLFLAGS_qemux86 = "-opengl"
 QT_GLFLAGS_emenlow = "-opengl"
 QT_GLFLAGS_atom-pc = "-opengl"
 QT_GLFLAGS_qemuppc = "-opengl"
+QT_GLFLAGS_mpc8315e-rdb = "-opengl"
 QT_CONFIG_FLAGS += "-no-xinerama -no-xkb ${QT_GLFLAGS}"
 QT_BASE_NAME ?= "qt4"
 QT_BASE_LIB  ?= "libqt"
-- 
1.7.0.4


