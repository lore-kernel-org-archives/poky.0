Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A230E0027F
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 14:36:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2012 14:36:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="188944277"
Received: from unknown (HELO localhost) ([10.7.199.146])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2012 14:36:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 20 Aug 2012 14:32:07 -0700
Message-Id: <ef9f8fc7a6283b51a67b343c40a1826a659875a6.1345498314.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.2
Cc: Richard Purdie <richard.purdie@intel.com>,
	Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH V2] README: Clarify where to send patches
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
X-List-Received-Date: Mon, 20 Aug 2012 21:36:26 -0000

There is still a great deal of confusion over where patches for the
various components of the poky repository should be sent. Attempt to
mitigate this by including a blurb in the poky README similar to what
other layers and repositories do.

V2: Call out the special care required when dealing with the scripts
    directory per Saul Wold's recommendation.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Richard Purdie <richard.purdie@intel.com>
CC: Paul Gortmaker <paul.gortmaker@windriver.com>
CC: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/README b/README
index 06b1ea6..2ce0bdc 100644
--- a/README
+++ b/README
@@ -27,3 +27,22 @@ DISTRO = "") and contains only emulated machine support.
 For information about OpenEmbedded, see the OpenEmbedded website:
     http://www.openembedded.org/
 
+Where to Send Patches
+=====================
+
+As Poky is an integration repository, patches against the various components
+should be sent to their respective upstreams.
+
+bitbake:
+    bitbake-devel@lists.openembedded.org
+
+meta-yocto:
+    poky@yoctoproject.org
+
+Most everything else should be sent to the OpenEmbedded Core mailing list.
+If in doubt, check the oe-core git repository for the content you intend to
+modify. If it exists there, send the patches to:
+    openembedded-core@lists.openembedded.org
+
+Note: The scripts directory should be treated with extra care as it is a mix
+      of oe-core and poky-specific files.
-- 
1.7.11.2


