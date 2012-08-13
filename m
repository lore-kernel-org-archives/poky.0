Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74205E013B2
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:00 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4E94D30426
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:55 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:37 -0700
Message-Id: <d4507b06aa863050565ee523c011d8d83724b995.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4E94D30426.844FC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 11/57] bitbake/fetch2: remove references to ChecksumError class
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:00 -0000

From: Matthew McClintock <msm@freescale.com>

From: Matthew McClintock <msm@freescale.com>

When merging fetch2 improvements from master into denzil, there
were too many dependencies to pull in the entire ChecksumError
class, so this patch removes references to ChecksumError for
compatability.

Fixes this issue:

NameError: global name 'ChecksumError' is not defined

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 798a29b..7e8bda2 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -525,12 +525,8 @@ def try_mirror_url(newuri, origud, ud, ld, check = False):
         raise
 
     except bb.fetch2.BBFetchException as e:
-        if isinstance(e, ChecksumError):
-            logger.warn("Mirror checksum failure for url %s (original url: %s)\nCleaning and trying again." % (newuri, origud.url))
-            logger.warn(str(e))
-        else:
-            logger.debug(1, "Mirror fetch failure for url %s (original url: %s)" % (newuri, origud.url))
-            logger.debug(1, str(e))
+        logger.debug(1, "Mirror fetch failure for url %s (original url: %s)" % (newuri, origud.url))
+        logger.debug(1, str(e))
         try:
             ud.method.clean(ud, ld)
         except UnboundLocalError:
-- 
1.7.9.5


