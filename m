Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E9A54C811D1
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2011 23:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="591043871"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2011 23:06:08 -0800
Message-Id: <caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 7 Jan 2011 16:04:55 +0800
Date: Sat, 08 Jan 2011 15:15:07 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/7] bb: add bb.fetcher as dynamic fetch module instance for fetch/fetch2
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:09 -0000

bb.fetcher is introduced to swtich between bb.fetch and bb.fetch2.
all bb.fetch/bb.fetch2 referrence can be replaced with bb.fetcher.instance,
so that we can cleanly switch between bb.fetch and bb.fetch2

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetcher.py |   26 ++++++++++++++++++++++++++
 1 files changed, 26 insertions(+), 0 deletions(-)
 create mode 100644 bitbake/lib/bb/fetcher.py

diff --git a/bitbake/lib/bb/fetcher.py b/bitbake/lib/bb/fetcher.py
new file mode 100644
index 0000000..3818d78
--- /dev/null
+++ b/bitbake/lib/bb/fetcher.py
@@ -0,0 +1,26 @@
+#!/usr/bin/env python
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import bb
+from bb import fetch, fetch2
+
+# switch between fetch and fetch2
+instance = bb.fetch
+__version__ = "1"
+
+#instance = bb.fetch2
+#__version__ = "2"
-- 
1.7.0.4


