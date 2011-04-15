Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F3324C80BBC
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 03:38:56 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3F8cuIg009192
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 01:38:56 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 15 Apr 2011 01:38:55 -0700
Message-ID: <dd1d4345d7d5761f8fd3028d009335a4449a2bc4.1302855555.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1302855555.git.xiaofeng.yan@windriver.com>
References: <cover.1302855555.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 15 Apr 2011 16:09:28 +0800
Date: Fri, 15 Apr 2011 16:27:44 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] task-poky-lsb.bb:Add locale resoures which is needed by LSB Test Suite
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
X-List-Received-Date: Fri, 15 Apr 2011 08:38:56 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Owning to absent locale resources in lsb-image, I add them to task-poky-lsb.bb

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-poky-lsb.bb |   10 ++++------
 1 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index 6fea613..71a683a 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -186,15 +186,13 @@ RDEPENDS_task-poky-lsb-runtime-add = "\
     liburi-perl \
     libxml-parser-perl \
     libxml-perl \
+    eglibc-localedatas \
+    eglibc-gconvs \
+    eglibc-charmaps \
+    eglibc-binaries \
     eglibc-localedata-posix \
     eglibc-extra-nss \
     eglibc-pcprofile \
     eglibc-pic \
     eglibc-utils \
 "
-
-#    eglibc-localedatas \
-#    eglibc-gconvs \
-#    eglibc-charmaps \
-#    eglibc-binarys \
-#
-- 
1.7.0.4


