Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 144554C80A46
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 17:15:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 15:15:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="602631155"
Received: from unknown (HELO localhost) ([10.255.15.30])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 15:15:37 -0800
Message-Id: <09e2aac993621fb1eaca8d1f7d150139472f7dae.1297724957.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1297724957.git.scott.m.rifenbark@intel.com>
References: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 8 Feb 2011 13:48:13 -0600
Date: Mon, 14 Feb 2011 17:16:11 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 4/6] documentation/kernel-manual/kernel-how-to.xml: - Condense and merge example changed.
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
X-List-Received-Date: Mon, 14 Feb 2011 23:15:38 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The example used to show how to condense and merge two BSPs into a second
SCM used a non-existant machine (cav_ebt5800-standard).  I replaced this
machine with 'common_pc_64-standard, which is a real machine.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 6b326b5..01a78e6 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -882,7 +882,7 @@ repository.
                     The following commands illustrate how you can condense and merge two BSPs into a second SCM:
                 <literallayout class='monospaced'>
      &gt; git checkout common_pc-standard
-     &gt; git merge cav_ebt5800-standard
+     &gt; git merge common_pc_64-standard
      # resolve any conflicts and commit them
      &gt; cd .. ; echo linux/.git &gt; .cvsignore
      &gt; cvs import -m "initial import" linux MY_COMPANY start
-- 
1.7.1


