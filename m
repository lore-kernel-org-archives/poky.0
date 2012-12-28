Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66522E014A3
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:08 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id CEA2E2FEF2
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:00 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:16 -0800
Message-Id: <70745d7bbd4f1995c768887fdbba60b9f2caaf39.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: CEA2E2FEF2.109C8
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 10/23] poky.ent: Updated to remove "current" and replace with 1.2.2
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:08 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky.ent |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/poky.ent b/documentation/poky.ent
index 03338a2..a8ebe77 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -1,6 +1,6 @@
 <!ENTITY DISTRO "1.2.2">
 <!ENTITY DISTRO_NAME "denzil">
-<!ENTITY YOCTO_DOC_VERSION "current">
+<!ENTITY YOCTO_DOC_VERSION "1.2.2">
 <!ENTITY POKYVERSION "7.0.2">
 <!ENTITY YOCTO_POKY "poky-&DISTRO_NAME;-&POKYVERSION;">
 <!ENTITY COPYRIGHT_YEAR "2010-2013">
-- 
1.7.9.5


