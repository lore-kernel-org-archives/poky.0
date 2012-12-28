Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D11EE01485
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:01 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 7B3572FEF1
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:54 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:13 -0800
Message-Id: <440bf94fa4c8adcabafd2182e3b240046ae141df.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 7B3572FEF1.13EF5
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 07/23] documentation: poky-ref-manual - Fixed grammar typo.
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:01 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 0c19753..64a5220 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -669,7 +669,7 @@
                     <literallayout class='monospaced'>
      FILESEXTRAPATHS_prepend := "path_1:path_2:path_3:"
                     </literallayout>
-                    Typically, you want your directories search first. 
+                    Typically, you want your directories searched first. 
                     To make sure that happens, use <filename>_prepend</filename> and 
                     the immediate expansion (<filename>:=</filename>) operator as shown in the 
                     previous example.
-- 
1.7.9.5


