Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3926E0144A
	for <poky@yoctoproject.org>; Fri, 14 Sep 2012 05:51:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Sep 2012 05:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,422,1344236400"; d="scan'208";a="222040695"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.221])
	by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2012 05:51:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>,
	poky@yoctoproject.org
Date: Fri, 14 Sep 2012 13:51:02 +0100
Message-Id: <297353841d334959370b9db85e57c5e68ecbcec1.1347620476.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1347620476.git.paul.eggleton@linux.intel.com>
References: <cover.1347620476.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1347620476.git.paul.eggleton@linux.intel.com>
References: <cover.1347620476.git.paul.eggleton@linux.intel.com>
Subject: [denzil][PATCH 2/2] bitbake: hob: format error messages properly
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
X-List-Received-Date: Fri, 14 Sep 2012 12:51:37 -0000

Error messages that use arguments need to be formatted properly, or we
don't get the full message. Use a formatter to do this when an error
occurs.

Partial fix for [YOCTO #2983].

(Bitbake rev: 6783538884adecd914909a9ab4ca73c27575f3ad)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 74138cb..52acec1 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -178,7 +178,9 @@ class HobHandler(gobject.GObject):
 
         elif isinstance(event, logging.LogRecord):
             if event.levelno >= logging.ERROR:
-                self.error_msg += event.msg + '\n'
+                formatter = bb.msg.BBLogFormatter()
+                formatter.format(event)
+                self.error_msg += event.message + '\n'
 
         elif isinstance(event, bb.event.TargetsTreeGenerated):
             self.current_phase = "data generation"
-- 
1.7.9.5


