Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4528E01426
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 12:56:52 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EBD2630467
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 15:56:45 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Jun 2012 12:56:36 -0700
Message-Id: <3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EBD2630467.ECC76
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Mon, 18 Jun 2012 19:56:52 -0000

From: Laurentiu Palcu <laurentiu.palcu@intel.com>

If BBPATH references the working directory, the user is warned and asked
to fix the problem.

[Yocto #1465]

(From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Reworked commit to fix merge conflicts with denzil branch.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/sanity.bbclass |   13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 9755694..298372b 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -310,7 +310,18 @@ def check_sanity(sanity_data):
     if "." in data.getVar('PATH', sanity_data, True).split(":"):
         messages = messages + "PATH contains '.' which will break the build, please remove this"
 
-    if data.getVar('TARGET_ARCH', sanity_data, True) == "arm":
+    bbpaths = sanity_data.getVar('BBPATH', True).split(":")
+    if "." in bbpaths or "" in bbpaths:
+        # TODO: change the following message to fatal when all BBPATH issues
+        # are fixed
+        bb.warn("BBPATH references the current directory, either through "    \
+                "an empty entry, or a '.'.\n\t This is unsafe and means your "\
+                "layer configuration is adding empty elements to BBPATH.\n\t "\
+                "Please check your layer.conf files and other BBPATH "        \
+                "settings to remove the current working directory "           \
+                "references.");
+
+    if sanity_data.getVar('TARGET_ARCH', True) == "arm":
         # This path is no longer user-readable in modern (very recent) Linux
         try:
             if os.path.exists("/proc/sys/vm/mmap_min_addr"):
-- 
1.7.9.5


