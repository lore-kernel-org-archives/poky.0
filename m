Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3225EE00747
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 12:56:45 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 50BE630467
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 15:56:38 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Jun 2012 12:56:33 -0700
Message-Id: <819bbcee50ebdbf5faad046c4bc4ed0179cf0866.1340038493.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 50BE630467.75F33
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/8] documentation: Updated Manual revision history table
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
X-List-Received-Date: Mon, 18 Jun 2012 19:56:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Using July 2012 for the release date.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-manual.xml           |    2 +-
 documentation/bsp-guide/bsp-guide.xml             |    2 +-
 documentation/dev-manual/dev-manual.xml           |    2 +-
 documentation/kernel-manual/kernel-manual.xml     |    2 +-
 documentation/poky-ref-manual/poky-ref-manual.xml |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index 33ca4c7..8eb89dd 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -51,7 +51,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.1</revnumber>
-                <date>Sometime in 2012</date>
+                <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 792be2f..fe28d91 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -63,7 +63,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.1</revnumber>
-                <date>Sometime in 2012</date>
+                <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/dev-manual/dev-manual.xml b/documentation/dev-manual/dev-manual.xml
index 966e056..d8b48f4 100644
--- a/documentation/dev-manual/dev-manual.xml
+++ b/documentation/dev-manual/dev-manual.xml
@@ -41,7 +41,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.1</revnumber>
-                <date>Sometime in 2012</date>
+                <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/kernel-manual/kernel-manual.xml b/documentation/kernel-manual/kernel-manual.xml
index 9fcadc2..0deef70 100644
--- a/documentation/kernel-manual/kernel-manual.xml
+++ b/documentation/kernel-manual/kernel-manual.xml
@@ -56,7 +56,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.1</revnumber>
-                <date>Sometime in 2012</date>
+                <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
         </revhistory>
diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index 76fc5eb..b4a120b 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -70,7 +70,7 @@
             </revision>
             <revision>
                 <revnumber>1.2.1</revnumber>
-                <date>Sometime in 2012</date>
+                <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
         </revhistory>
-- 
1.7.9.5


