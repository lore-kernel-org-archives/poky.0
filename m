Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15F23E0070B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:28 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 7DADF2FF3B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:22 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:20 -0700
Message-Id: <85a720faf94a04a8a8a2de428b304f08b866c32d.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 7DADF2FF3B.C26B7
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 30/31] documentation/bsp-guide/bsp.xml: Review comments to recommendations
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:28 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I added a small review comment to the section based on reviewer
feedback.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index e111713..6fd61c0 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -848,7 +848,12 @@
                             filesystems meant to allow users to boot the BSP for evaluation
                             purposes, you should put the images and artifacts within a 
                             <filename>binary/</filename> subdirectory located in the 
-                            <filename>meta-&lt;bsp_name&gt;</filename> directory.</para></listitem>
+                            <filename>meta-&lt;bsp_name&gt;</filename> directory.
+                            <note>If you do include a bootable image as part of the BSP and the image
+                            was built by software covered by the GPL or other open source licenses,
+                            it is your responsibility to understand
+                            and meet all licensing requirements, which could include distribution
+                            of source files.</note></para></listitem>
                         <listitem><para><emphasis>Use a Yocto Linux Kernel:</emphasis>
                             Kernel recipes in the BSP should be based on a Yocto Linux kernel. 
                             Basing your recipes on these kernels reduces the costs for maintaining 
-- 
1.7.9.5


