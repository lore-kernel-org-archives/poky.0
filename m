Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D75E0030B
	for <poky@yoctoproject.org>; Sat,  7 Jan 2012 23:44:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q087ikqo013135
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 7 Jan 2012 23:44:46 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 7 Jan 2012 23:44:45 -0800
Message-ID: <607332c9ba838db6774e5141218ce9107d6b1aaf.1326007408.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1326007408.git.xiaofeng.yan@windriver.com>
References: <cover.1326007408.git.xiaofeng.yan@windriver.com>
Old-Date: Sun, 8 Jan 2012 15:15:36 +0800
Date: Sun, 8 Jan 2012 15:33:47 +0800
To: <poky@yoctoproject.org>, <mark.hatle@windriver.com>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
Subject: [OE-core][PATCH 1/1] local.conf.sample: Define variable "ARCHIVE_TYPE"
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
X-List-Received-Date: Sun, 08 Jan 2012 07:44:46 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

This variable is used for selecting the type of packaging source codes tree (src.rpm or tar.gz)
source codes tree is a directory after unpacking and patching.

[YOCTO #1655]

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta-yocto/conf/local.conf.sample |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 38507e3..8745e65 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -187,6 +187,17 @@ USER_CLASSES ?= "buildstats image-mklibs image-prelink"
 #TEST_SERIALIZE = "1"
 
 #
+# Pacakge source codes tree to source rpm and tar packages
+#
+# ARCHIVE_TYPE ?= "SRPM":  package source codes tree to source rpm package
+# ARCHIVE_TYPE ?= "TARGZ": package source codes tree to tar package
+# Inherit tar_archive.bbclass in package_rpm.bbclass before enabling this variable
+# Run like the following command 
+# $ bitbake core-image-sato -c copysources <get all of packages>
+# $ ls build/tmp/deploy/sources
+#ARCHIVE_TYPE ?= "SRPM"
+
+#
 # Interactive shell configuration
 #
 # Under certain circumstances the system may need input from you and to do this it 
-- 
1.7.0.4


