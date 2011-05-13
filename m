Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D1834C811A9
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:33 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1059409"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
Message-Id: <ac78560d6e039bc2a9cec1837522cf6c01b75d5e.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:46:51 -0700
Date: Thu, 12 May 2011 17:20:33 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 18/25] python-pycurl: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:33 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../python/python-pycurl/no-static-link.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/python/python-pycurl/no-static-link.patch b/meta/recipes-devtools/python/python-pycurl/no-static-link.patch
index b7c5ab9..c97f5dc 100644
--- a/meta/recipes-devtools/python/python-pycurl/no-static-link.patch
+++ b/meta/recipes-devtools/python/python-pycurl/no-static-link.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: pycurl-7.18.2/setup.py
 ===================================================================
 --- pycurl-7.18.2.orig/setup.py
-- 
1.7.3.4


