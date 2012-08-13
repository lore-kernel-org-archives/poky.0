Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48294E0044A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:15 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 92FA630441
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:09 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:09 -0700
Message-Id: <8e92dc008bcdd916a7424316aa567891ebc62514.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 92FA630441.6B322
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 43/57] cooker: fix UnboundLocalError when exception occurs during parsing
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:15 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Fix a recent regression where we see the following additional error
after an error occurs during parsing:

ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/paul/poky/poky/bitbake/lib/bb/command.py", line 84, in runAsyncCommand
    self.cooker.updateCache()
  File "/home/paul/poky/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache
    if not self.parser.parse_next():
  File "/home/paul/poky/poky/bitbake/lib/bb/cooker.py", line 1672, in parse_next
    self.virtuals += len(result)
UnboundLocalError: local variable 'result' referenced before assignment

(Bitbake rev: 1ae0181ba49ccfcb2d889de5dd1d8912b9e49157)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/cooker.py |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 4a4dc38..4016f3b 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -1644,6 +1644,8 @@ class CookerParser(object):
                     yield result
 
     def parse_next(self):
+        result = []
+        parsed = None
         try:
             parsed, result = self.results.next()
         except StopIteration:
-- 
1.7.9.5


