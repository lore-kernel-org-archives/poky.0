Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1EA594C806F9
	for <poky@yoctoproject.org>; Wed, 25 May 2011 02:05:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4P75Xrr022631
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 25 May 2011 00:05:33 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 25 May 2011 00:05:32 -0700
Message-ID: <fbcc5c024783f4b03063287776183e7cc33849fd.1306297759.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306297759.git.xiaofeng.yan@windriver.com>
References: <cover.1306297759.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 25 May 2011 10:01:47 +0800
Date: Wed, 25 May 2011 15:03:46 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/2] poky-lsb: Compile library libQtOpenGL* for building a lsb image
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
X-List-Received-Date: Wed, 25 May 2011 07:05:34 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix bug [YOCTO #1020]
This patch is part of fixing bug [YOCTO #1020]. If another patch to install libQtOpenGL* to lsb image  is merged to poky,
then this bug will be fixed.For a lsb image prepared to meet lsb requirement, library "libQtOpenGL*" should be compiled.
So I add this patch for passing lsb test.

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


