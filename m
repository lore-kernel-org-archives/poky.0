Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB64B4C80517
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 19:34:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Feb 2011 17:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,209,1297065600"; d="scan'208";a="392643262"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 17:34:26 -0800
Message-Id: <e11841c20a1b91e95dbcfb11cda2070bb292d788.1298424181.git.lei.mei@intel.com>
In-Reply-To: <cover.1298424181.git.lei.mei@intel.com>
References: <cover.1298424181.git.lei.mei@intel.com>
Old-Date: Wed, 23 Feb 2011 08:59:35 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] distrodata.bbclass: Fix the postfix issue in check_new_ver function
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
Date: Wed, 23 Feb 2011 01:34:28 -0000
X-Original-Date: 三, 23  2月 2011  9:33:40 +0800
X-List-Received-Date: Wed, 23 Feb 2011 01:34:28 -0000

From: Mei Lei <lei.mei@intel.com>

Change the regular expression when checking upstream version, ignore postfix like "origin" in 3.2.2.orgin, "pre1" in 3.12-pre1, but keep the postfix lik
e"rc1" in 1.2rc1.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 049ebf9..831c7a2 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -434,7 +434,7 @@ python do_checkpkg() {
 				status = "ErrParseDir"
 			else:
 				"""newver still contains a full package name string"""
-				status = re.search("(\d+[.\-_])*[0-9a-zA-Z]+", newver[1]).group()
+				status = re.search("(\d+[\.\-_])*(\d+[0-9a-zA-Z]*)", newver[1]).group()
 		elif not len(fhtml):
 			status = "ErrHostNoDir"
 
-- 
1.6.3.3


