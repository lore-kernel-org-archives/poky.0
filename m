Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64345E014A6
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:12 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 151842FEF4
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:04 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:18 -0800
Message-Id: <7580689c674d8a045a29a3c8679765514ab83912.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 151842FEF4.ECF43
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 12/23] documentation: Updated manual history tables for Feb 2013
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2012 21:45:12 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The release date for the five manuals was updated to
Feb 2013 for the 1.2.2 release.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-manual.xml           |    2 +-
 documentation/bsp-guide/bsp-guide.xml             |    2 +-
 documentation/dev-manual/dev-manual.xml           |    2 +-
 documentation/kernel-manual/kernel-manual.xml     |    2 +-
 documentation/poky-ref-manual/poky-ref-manual.xml |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index ff97496..900a4e6 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -56,7 +56,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.2</revnumber>
-                <date>February 2013</date>
+                <date>January 2013</date>
                 <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index b786139..847ca25 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -68,7 +68,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.2</revnumber>
-                <date>February 2013</date>
+                <date>January 2013</date>
                 <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/dev-manual/dev-manual.xml b/documentation/dev-manual/dev-manual.xml
index 9aeeb98..575755e 100644
--- a/documentation/dev-manual/dev-manual.xml
+++ b/documentation/dev-manual/dev-manual.xml
@@ -46,7 +46,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.2</revnumber>
-                <date>February 2013</date>
+                <date>January 2013</date>
                 <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/kernel-manual/kernel-manual.xml b/documentation/kernel-manual/kernel-manual.xml
index 0952599..91ec196 100644
--- a/documentation/kernel-manual/kernel-manual.xml
+++ b/documentation/kernel-manual/kernel-manual.xml
@@ -61,7 +61,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.2</revnumber>
-                <date>February 2013</date>
+                <date>January 2013</date>
                 <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index c66f100..0916d66 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -75,7 +75,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.2</revnumber>
-                <date>February 2013</date>
+                <date>January 2013</date>
                 <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
             </revision>
         </revhistory>
-- 
1.7.9.5


