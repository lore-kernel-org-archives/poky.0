Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 147B34C81205
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 18:09:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2010 16:09:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,339,1288594800"; d="scan'208";a="686811302"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 16:09:53 -0800
Message-Id: <fd753e7502c3f6dfe1a80e8a15c93ef3f8869b90.1292284646.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292284646.git.scott.m.rifenbark@intel.com>
References: <cover.1292284646.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Mon, 13 Dec 2010 13:44:16 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] documentation/kernel-manual/kernel-how-to.xml: added newline character
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
X-List-Received-Date: Tue, 14 Dec 2010 00:09:54 -0000

There was a git checkout and git push command that did not have a newline
character between the two line in a literallayout block.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 67f6a90..6b326b5 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1078,7 +1078,8 @@ That's it. Configure and build.
                 <para>
                     Now create a branch in the local clone and push it to the bare clone:
                     <literallayout class='monospaced'>
-     $ git checkout -b crownbay-standard origin/standard $ git push origin crownbay-standard:crownbay-standard
+     $ git checkout -b crownbay-standard origin/standard 
+     $ git push origin crownbay-standard:crownbay-standard
                     </literallayout>
                 </para>
                
-- 
1.7.0.4


