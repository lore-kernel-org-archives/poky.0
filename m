Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C998DE0148D
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:03 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 7D0832FEF4
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:56 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:14 -0800
Message-Id: <c189289423d4c7fcb7d215d9bc76f40e51a2948a.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 7D0832FEF4.80D1D
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 08/23] Documentation: ref-manual - Updated LIC_FILES_CHKSUM example.
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:03 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

One of the examples used "startline" instead of "beginline".
Correction made.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../poky-ref-manual/technical-details.xml          |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/poky-ref-manual/technical-details.xml b/documentation/poky-ref-manual/technical-details.xml
index a63943e..abf9105 100644
--- a/documentation/poky-ref-manual/technical-details.xml
+++ b/documentation/poky-ref-manual/technical-details.xml
@@ -725,7 +725,7 @@
             <para>
                 You can also use relative paths as shown in the following example: 
                 <literallayout class='monospaced'>
-     LIC_FILES_CHKSUM = "file://src/ls.c;startline=5;endline=16;\
+     LIC_FILES_CHKSUM = "file://src/ls.c;beginline=5;endline=16;\
                                          md5=bb14ed3c4cda583abc85401304b5cd4e"
      LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
                 </literallayout>
-- 
1.7.9.5


