Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25EB2E0044A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:11 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EE02530446
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:04 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:07 -0700
Message-Id: <de71a383c1c61f24da04378a034a5b2479dc37d1.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EE02530446.ED64A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 41/57] scripts/buildhistory-diff: add GitPython version check
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:11 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Display an error if the user does not have at least version 0.3.1 of
GitPython installed.

(From OE-Core rev: 2f0f5a895504924b5a21699854678e9bc25b447c)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/buildhistory-diff |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/buildhistory-diff b/scripts/buildhistory-diff
index 9936a4b..3f27eab 100755
--- a/scripts/buildhistory-diff
+++ b/scripts/buildhistory-diff
@@ -7,16 +7,20 @@
 
 import sys
 import os
+from distutils.version import LooseVersion
 
 # Ensure PythonGit is installed (buildhistory_analysis needs it)
 try:
     import git
 except ImportError:
-    print("Please install PythonGit 0.3.1 or later in order to use this script")
+    print("Please install GitPython (python-git) 0.3.1 or later in order to use this script")
     sys.exit(1)
 
-
 def main():
+    if LooseVersion(git.__version__) < '0.3.1':
+        print("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
+        sys.exit(1)
+
     if (len(sys.argv) < 3):
         print("Report significant differences in the buildhistory repository")
         print("Syntax: %s <buildhistory-path> <since-revision> [to-revision]" % os.path.basename(sys.argv[0]))
-- 
1.7.9.5


