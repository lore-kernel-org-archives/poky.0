Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 375C54C811D0
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 13:10:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="581463878"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
Message-Id: <98424eed8b4c0f126fd3fee82eccd5c99ba94a4b.1291748065.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1291748065.git.scott.m.rifenbark@intel.com>
References: <cover.1291748065.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 3 Dec 2010 08:32:23 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] documentation/kernel-manual/kernel-concepts.xml: Re-worded a note to state best practices for organizing shared features.
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
X-List-Received-Date: Tue, 07 Dec 2010 19:10:28 -0000

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-concepts.xml |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/documentation/kernel-manual/kernel-concepts.xml b/documentation/kernel-manual/kernel-concepts.xml
index d2ebab0..f26e290 100644
--- a/documentation/kernel-manual/kernel-concepts.xml
+++ b/documentation/kernel-manual/kernel-concepts.xml
@@ -230,9 +230,11 @@
                 in question.
             </para>
             <note><para>
-                This practice is not typically encouraged.
-                However, during development cycles or when large features are merged the practice
-                can't be avoided.
+                The Yocto Project team strives to place features in the tree such that they can be 
+                shared by all boards and kernel types where possible.
+                However, during development cycles or when large features are merged this practice 
+                cannot always be followed. 
+                In those cases isolated branches are used for feature merging.
             </para></note>
             <para>
                 BSP-specific code additions are handled in a similar manner to kernel-specific additions. 
-- 
1.7.0.4


