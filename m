Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B5924C80A98
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:49 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 02:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,352,1301900400"; d="scan'208";a="745605993"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2011 02:13:43 -0700
Message-Id: <39a56f65c7450416fda10ce1d5c6354fa935140f.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 27 Apr 2011 15:11:12 +0800
Date: Wed, 11 May 2011 17:19:58 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 2/8] mktemp: update patch Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:49 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../mktemp/files/disable-strip.patch               |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/mktemp/files/disable-strip.patch b/meta/recipes-extended/mktemp/files/disable-strip.patch
index d6bc528..e06869e 100644
--- a/meta/recipes-extended/mktemp/files/disable-strip.patch
+++ b/meta/recipes-extended/mktemp/files/disable-strip.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 diff --git a/Makefile.in b/Makefile.in
 index 37b3cc9..f1026f3 100644
 --- a/Makefile.in
-- 
1.7.0.4


