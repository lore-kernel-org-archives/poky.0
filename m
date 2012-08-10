Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A55F2E01404
	for <poky@yoctoproject.org>; Fri, 10 Aug 2012 09:13:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Aug 2012 09:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,745,1336374000"; d="scan'208";a="206252226"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.78])
	by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2012 09:13:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org,
	Scott Garman <scott.a.garman@intel.com>
Date: Fri, 10 Aug 2012 17:13:46 +0100
Message-Id: <f337cfe301cd00c296fe771c4f29eb133ff21fb3.1344615154.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344615154.git.paul.eggleton@linux.intel.com>
References: <cover.1344615154.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1344615154.git.paul.eggleton@linux.intel.com>
References: <cover.1344615154.git.paul.eggleton@linux.intel.com>
Subject: [denzil][PATCH 1/1] cooker: fix UnboundLocalError when exception occurs during parsing
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
X-List-Received-Date: Fri, 10 Aug 2012 16:13:52 -0000

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


