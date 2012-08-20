Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7641BE0027E
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 09:43:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 09:36:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,797,1336374000"; d="scan'208";a="182983746"
Received: from unknown (HELO localhost) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2012 09:36:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 20 Aug 2012 09:34:12 -0700
Message-Id: <eacd8ae3bd699c05daed45ab0a1325dd628a096c.1345480452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.2
Cc: Richard Purdie <richard.purdie@intel.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] README: Clarify where to send patches
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
X-List-Received-Date: Mon, 20 Aug 2012 16:43:12 -0000

There is still a great deal of confusion over where patches for the
various components of the poky repository should be sent. Attempt to
mitigate this by including a blurb in the poky README similar to what
other layers and repositories do.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Richard Purdie <richard.purdie@intel.com>
CC: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 README | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/README b/README
index 06b1ea6..9d35022 100644
--- a/README
+++ b/README
@@ -27,3 +27,19 @@ DISTRO = "") and contains only emulated machine support.
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
-- 
1.7.11.2


