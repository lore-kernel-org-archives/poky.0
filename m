Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6FEB4C800B0
	for <poky@yoctoproject.org>; Fri,  6 May 2011 00:16:20 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p465GJGp011707
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 May 2011 22:16:19 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 5 May 2011 22:16:19 -0700
Message-ID: <7d7f51f90af2780a738d680d5e2d9c683660e207.1304658653.git.kai.kang@windriver.com>
In-Reply-To: <cover.1304658653.git.kai.kang@windriver.com>
References: <cover.1304658653.git.kai.kang@windriver.com>
Old-Date: Thu, 5 May 2011 15:58:14 +0800
Date: Fri, 6 May 2011 13:16:06 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] task-core-lsb: add gettext-runtime and libxml-sax-perl
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
X-List-Received-Date: Fri, 06 May 2011 05:16:20 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Because gettext is splitted, so add gettext-runtime to provide command gettext
Add libxml-sax-perl
Bump PR

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index 6de24b4..e80d179 100644
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
@@ -111,6 +111,7 @@ RDEPENDS_task-core-tcl = "\
 RDEPENDS_task-core-misc = "\
     elfutils \
     gettext \
+    gettext-runtime \
     groff \
     lsb \
     lsbsetup \
@@ -188,6 +189,7 @@ RDEPENDS_task-core-lsb-runtime-add = "\
     liburi-perl \
     libxml-parser-perl \
     libxml-perl \
+    libxml-sax-perl \
     eglibc-localedatas \
     eglibc-gconvs \
     eglibc-charmaps \
-- 
1.7.1


