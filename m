Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04E434C8009D
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 07:16:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p65CGCvD016045
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 5 Jul 2011 05:16:12 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 5 Jul 2011 05:16:11 -0700
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 5 Jul 2011 20:11:05 +0800
Message-ID: <3a728701a11e9fdc2d74c802e0f39cb97b281751.1309867650.git.xiaofeng.yan@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1309867650.git.xiaofeng.yan@windriver.com>
References: <cover.1309867650.git.xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] libQtOpenGL: Install libQtOpenGL to an lsb image
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
X-List-Received-Date: Tue, 05 Jul 2011 12:16:13 -0000
Content-Type: text/plain

Library "libQtOpenGL" is needed by an lsb image. So I add it to task-core-lsb.bb
Fix Bug [YOCTO #1020]

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 355161b..404c3ec 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -3,7 +3,7 @@ require conf/distro/poky.conf
 DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
 
-DISTRO_FEATURES_append = " pam"
+DISTRO_FEATURES_append = " pam largefile opengl"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 
-- 
1.7.0.4


