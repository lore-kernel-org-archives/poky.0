Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4243E014CF
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:24 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5E57D2FEF1
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:18 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:24 -0800
Message-Id: <6cf008891f6b11bf8a2f0c60fedfbb1a922a81e3.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5E57D2FEF1.BC4CC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 18/23] gitignore: add generated doc files to ignore list
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:24 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .gitignore |   24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index f8db092..32ade34 100644
--- a/.gitignore
+++ b/.gitignore
@@ -17,5 +17,25 @@ meta-*
 *.orig
 *.rej
 *~
-
-
+documentation/adt-manual/adt-manual.html
+documentation/adt-manual/adt-manual.pdf
+documentation/adt-manual/adt-manual.tgz
+documentation/dev-manual/dev-manual.html
+documentation/dev-manual/dev-manual.pdf
+documentation/dev-manual/dev-manual.tgz
+documentation/poky-ref-manual/poky-ref-manual.html
+documentation/poky-ref-manual/poky-ref-manual.pdf
+documentation/poky-ref-manual/poky-ref-manual.tgz
+documentation/poky-ref-manual/bsp-guide.html
+documentation/poky-ref-manual/bsp-guide.pdf
+documentation/bsp-guide/bsp-guide.html
+documentation/bsp-guide/bsp-guide.pdf
+documentation/bsp-guide/bsp-guide.tgz
+documentation/yocto-project-qs/yocto-project-qs.html
+documentation/yocto-project-qs/yocto-project-qs.tgz
+documentation/kernel-manual/kernel-manual.html
+documentation/kernel-manual/kernel-manual.tgz
+documentation/kernel-manual/kernel-manual.pdf
+documentation/mega-manual/mega-manual.html
+documentation/mega-manual/mega-manual.pdf
+documentation/mega-manual/mega-manual.tgz
-- 
1.7.9.5


