Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16C984C804C2
	for <poky@yoctoproject.org>; Tue, 17 May 2011 05:37:29 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4HAbS4V012728
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:37:28 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 17 May 2011 03:37:28 -0700
Message-ID: <c210f2c9d10d813d1981883c509ba1e27da85ddc.1305628206.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305628206.git.xiaofeng.yan@windriver.com>
References: <cover.1305628206.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 17 May 2011 18:20:17 +0800
Date: Tue, 17 May 2011 18:36:21 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] README: Update README of meta-qt3
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
X-List-Received-Date: Tue, 17 May 2011 10:37:29 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The README is about the following two respects:
1 How to build a lsb-image including qt3 library
2 How to Add qt3 library for user to their custom image

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 README |   39 ++++++++++++++++++++++++++++++++++-----
 1 files changed, 34 insertions(+), 5 deletions(-)

diff --git a/README b/README
index 9be700e..b74bee2 100644
--- a/README
+++ b/README
@@ -1,8 +1,37 @@
+meta-qt3
+========
 
-README for meta-qt3
+This layer provides Qt 3.x libraries. Its intended use is for passing LSB tests
+as Qt3 is a requirement for LSB; however the libraries may also be used for any
+other purpose requiring Qt3.
 
-To use this branch, add the path to this directory to your
-conf/bblayers.conf file.
+--------------------------------
+Build an LSB image including Qt3
+--------------------------------
 
-You may also have to set DISTRO = "poky-lsb" in your conf/local.conf
-file.
+You can build an LSB image including Qt3 using the following steps:
+
+1. Add meta-qt3 path to COREBASE/build/conf/bblayers.conf file
+
+2. Set DISTRO = "poky-lsb" in COREBASE/build/conf/local.conf file
+
+3. Build lsb-image including qt3
+   $ bitbake core-image-lsb-qt3
+
+Note: "core-image-lsb-qt3" is the image prepared to meet the demands of LSB.
+
+--------------------------------
+Include Qt3 in your custom image
+--------------------------------
+
+If you only want to add Qt3 to your custom image, then you should perform
+the following steps:
+
+1. Add meta-qt3 path to COREBASE/build/conf/bblayers.conf file
+
+2. Add task-core-qt3 file to your custom image.
+   For example, if core-image-custom.bb is your building image file,
+   then you should add task-core-qt3 to IMAGE_INSTALL in core-image-custom.bb
+
+3. Build your custom image in build directory
+   $ bitbake core-image-custom
-- 
1.7.0.4


