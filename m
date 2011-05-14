Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E6724C8121F
	for <poky@yoctoproject.org>; Sat, 14 May 2011 04:54:35 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4E9sXL9027294
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 14 May 2011 02:54:33 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 14 May 2011 02:54:33 -0700
Message-ID: <1b0080da16b9315a8e22a54f3d15992ed7603028.1305366509.git.kai.kang@windriver.com>
In-Reply-To: <cover.1305366509.git.kai.kang@windriver.com>
References: <cover.1305366509.git.kai.kang@windriver.com>
Old-Date: Thu, 5 May 2011 15:58:14 +0800
Date: Sat, 14 May 2011 17:53:41 +0800
To: <saul.wold@intel.com>, <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 3/4] task-core-lsb: add packages into lsb image
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
X-List-Received-Date: Sat, 14 May 2011 09:54:35 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add gettext-runtime, libxml-sax-perl and foomatic-filters to
task-core-image.bb
Bump PR to r4

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index 6de24b4..70eb2d6 100644
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
@@ -131,6 +132,7 @@ RDEPENDS_task-core-lsb-command-add = "\
     msmtp \
     chkconfig \
     xdg-utils \
+    foomatic-filters \
 "
 #    cups
 
@@ -188,6 +190,7 @@ RDEPENDS_task-core-lsb-runtime-add = "\
     liburi-perl \
     libxml-parser-perl \
     libxml-perl \
+    libxml-sax-perl \
     eglibc-localedatas \
     eglibc-gconvs \
     eglibc-charmaps \
-- 
1.7.1


