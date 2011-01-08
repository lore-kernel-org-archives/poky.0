Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE83F4C80039
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jan 2011 23:06:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="875600354"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2011 23:06:10 -0800
Message-Id: <a71ba3a16ce3c94ec9a0f274bc250b5071510605.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sat, 8 Jan 2011 10:26:28 +0800
Date: Sat, 08 Jan 2011 15:15:09 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/7] BBHandler: remove bb.fetch referrence
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:11 -0000

BBHandler.py no longer use bb.fetch, so remove its import statement

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/parse/parse_py/BBHandler.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/parse/parse_py/BBHandler.py b/bitbake/lib/bb/parse/parse_py/BBHandler.py
index 81554b9..eb58eef 100644
--- a/bitbake/lib/bb/parse/parse_py/BBHandler.py
+++ b/bitbake/lib/bb/parse/parse_py/BBHandler.py
@@ -28,7 +28,7 @@
 from __future__ import absolute_import
 import re, bb, os
 import logging
-import bb.fetch, bb.build, bb.utils
+import bb.build, bb.utils
 from bb import data
 
 from . import ConfHandler
-- 
1.7.0.4


