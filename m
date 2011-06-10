Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15C1C4C8055B
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 05:03:19 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5AA3I6b008982
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 03:03:18 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 10 Jun 2011 03:03:17 -0700
Message-ID: <79dccedc4c26c5ab693f8050ff6353150d9aa651.1307695798.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1307695798.git.xiaofeng.yan@windriver.com>
References: <cover.1307695798.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 10 Jun 2011 16:29:15 +0800
Date: Fri, 10 Jun 2011 18:00:14 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] poky-lsb: Compile library libQtOpenGL* for building an lsb image Fix bug [YOCTO #1020] This patch is part of fixing bug [YOCTO #1020]. If another patch to install libQtOpenGL* to lsb image is merged to poky, \ then this bug will be fixed.For an lsb image prepared to meet lsb requirement, library "libQtOpenGL*" should be compiled. So I add this patch for passing lsb test.
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
X-List-Received-Date: Fri, 10 Jun 2011 10:03:19 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index eb1cf82..29f526d 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -6,4 +6,4 @@ DISTROOVERRIDES = "poky:linuxstdbase"
 DISTRO_FEATURES += "pam largefile"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
-
+QT_GLFLAGS = "-opengl"
-- 
1.7.0.4


