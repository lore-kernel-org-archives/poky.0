Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87A764C811A5
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 06:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="699968792"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2011 06:28:58 -0800
Message-Id: <b9fbc17fe0674de1adb48a3abeef07a60630fcac.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 22:41:23 +0800
Date: Mon, 24 Jan 2011 22:32:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 04/21] bb.fetch: add fetch version to distinguish bb.fetch and bb.fetch2
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:10 -0000

there is case that we need to distingush bb.fetch and bb.fetch2,
and use different API for bb.fetch and bb.fetch2. so it is necessary
to add version info for distinguish purpose

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/__init__.py  |    2 ++
 bitbake/lib/bb/fetch2/__init__.py |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
index 07eb77d..49fe502 100644
--- a/bitbake/lib/bb/fetch/__init__.py
+++ b/bitbake/lib/bb/fetch/__init__.py
@@ -32,6 +32,8 @@ import bb
 from   bb import data
 from   bb import persist_data
 
+__version__ = "1"
+
 logger = logging.getLogger("BitBake.Fetch")
 
 class MalformedUrl(Exception):
diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index c5b5272..636178c 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -32,6 +32,8 @@ import bb
 from   bb import data
 from   bb import persist_data
 
+__version__ = "2"
+
 logger = logging.getLogger("BitBake.Fetch")
 
 class MalformedUrl(Exception):
-- 
1.7.0.4


