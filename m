Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFF904C800FB
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:54:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Feb 2011 00:54:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="384091752"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by azsmga001.ch.intel.com with ESMTP; 04 Feb 2011 00:54:13 -0800
Message-Id: <b70a5cd56dadb49ef43b118872cfd5c1c97e373e.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Thu, 13 Jan 2011 18:30:02 +0000
Date: Fri, 04 Feb 2011  8:54:07 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 08/13] bitbake/event: fix some whitespace issues
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
X-List-Received-Date: Fri, 04 Feb 2011 08:54:15 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/event.py |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/event.py b/bitbake/lib/bb/event.py
index 176eeb8..b726b63 100644
--- a/bitbake/lib/bb/event.py
+++ b/bitbake/lib/bb/event.py
@@ -356,7 +356,6 @@ class TargetsTreeGenerated(Event):
     """
     Event when a set of buildable targets has been generated
     """
-
     def __init__(self, model):
         Event.__init__(self)
         self._model = model
@@ -365,10 +364,9 @@ class ConfigFilesFound(Event):
     """
     Event when a list of appropriate config files has been generated
     """
-
     def __init__(self, variable, values):
         Event.__init__(self)
-        self._variable =  variable
+        self._variable = variable
         self._values = values
 
 class MsgBase(Event):
-- 
1.7.4


