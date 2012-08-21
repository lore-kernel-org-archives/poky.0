Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44661E0027F
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 09:29:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 09:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; d="scan'208";a="207630102"
Received: from unknown (HELO localhost) ([10.255.13.36])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2012 09:29:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Tue, 21 Aug 2012 09:27:16 -0700
Message-Id: <05d539a9494fad9e5a84891631abe046c16b3063.1345566425.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.2
Cc: Richard Purdie <richard.purdie@intel.com>,
	Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH V3] README: Clarify where to send patches
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
X-List-Received-Date: Tue, 21 Aug 2012 16:29:28 -0000

There is still a great deal of confusion over where patches for the
various components of the poky repository should be sent. Attempt to
mitigate this by including a blurb in the poky README similar to what
other layers and repositories do.

V2: Call out the special care required when dealing with the scripts
    directory per Saul Wold's recommendation.

V3: Recommend applying patches to oe-core prior to sending patches to
    the oe-core mailing list.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Richard Purdie <richard.purdie@intel.com>
CC: Paul Gortmaker <paul.gortmaker@windriver.com>
CC: Paul Eggleton <paul.eggleton@linux.intel.com>
CC: Khem Raj <raj.khem@gmail.com>
---
 README | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/README b/README
index 06b1ea6..5084853 100644
--- a/README
+++ b/README
@@ -27,3 +27,23 @@ DISTRO = "") and contains only emulated machine support.
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
+Most everything else should be sent to the OpenEmbedded Core mailing list.  If
+in doubt, check the oe-core git repository for the content you intend to modify.
+Before sending, be sure the patches apply cleanly to the current oe-core git
+repository.
+    openembedded-core@lists.openembedded.org
+
+Note: The scripts directory should be treated with extra care as it is a mix
+      of oe-core and poky-specific files.
-- 
1.7.11.2


