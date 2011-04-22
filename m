Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF5C14C80A73
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 01:45:30 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3M6jU6o027980
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Apr 2011 23:45:30 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 21 Apr 2011 23:45:29 -0700
Message-ID: <a3991bca1d0a18e5896f5a3288fb2183a3ed03bd.1303454125.git.kai.kang@windriver.com>
In-Reply-To: <cover.1303454125.git.kai.kang@windriver.com>
References: <cover.1303454125.git.kai.kang@windriver.com>
Old-Date: Fri, 22 Apr 2011 14:03:53 +0800
Date: Fri, 22 Apr 2011 14:45:28 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] lsbsetup: add some workaround for LSB tests
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
X-List-Received-Date: Fri, 22 Apr 2011 06:45:30 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add some workaround for LSB libstdcpp and tcl tests.
Recreate locales for libstdcpp test, and resolve localhost is for
tcl test [Yocto 898]
Bump PR, update LICENSE information and installed file mode

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   15 ++++++++++++++-
 meta/recipes-extended/lsb/lsbsetup_0.9.bb       |    8 ++++----
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
index 7ce823e..a8189e5 100644
--- a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
+++ b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
@@ -1,6 +1,6 @@
 #!/bin/bash
 
-# Copyright (c) 2005-2010 Wind River Systems, Inc.
+# Copyright (C) 2010-2011 Wind River Systems, Inc.
 #
 # This program is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License version 2 as
@@ -201,6 +201,19 @@ fi
 addr=`ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}'|sed s/[[:space:]][[:space:]]Bcast//g`
 echo -e "you should input ${addr}:8888 on your browser"
 
+#workaround to add part of locales for LSB test
+localedef -i ja_JP -f EUC-JP ja_JP.eucjp
+localedef -i en_US -f ISO-8859-15  en_US.ISO-8859-15
+localedef -i en_US -f UTF-8 en_US.UTF-8
+localedef -i se_NO -f UTF-8 se_NO.UTF-8
+localedef -i de_DE -f ISO-8859-1 de_DE
+
+#resolve localhost 
+LOCALHOST=`hostname`
+if ! `grep -F -q "$LOCALHOST" /etc/hosts`; then
+    echo "127.0.0.1 $LOCALHOST" >> /etc/hosts
+fi
+
 #Step 10
 echo "Done!!"
 
diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
index 8cbaf1e..5fd0584 100644
--- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
+++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
@@ -2,9 +2,9 @@ DESCRIPTION = "auto-setup environment for lsb test"
 SECTION = "console/utils"
 PRIORITY = "required"
 LICENSE = "GPLv2"
-PR = "r0"
+PR = "r1"
 
-LIC_FILES_CHKSUM = "file://LSB_Setup.sh;md5=7391be3e70a02d44e1b183fa103b0585"
+LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
 
 SRC_URI = "file://LSB_Setup.sh"
 
@@ -12,6 +12,6 @@ S=${WORKDIR}
 
 do_install() {
         # Only install file if it has a contents
-	install -d ${D}/usr/bin
-        install -m 0644 ${S}/LSB_Setup.sh ${D}/usr/bin
+        install -d ${D}/usr/bin
+        install -m 0755 ${S}/LSB_Setup.sh ${D}/usr/bin
 }
-- 
1.7.1


