Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B3154C80B71
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 18:09:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 16:09:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,339,1288594800"; d="scan'208";a="583397013"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 16:09:33 -0800
Message-Id: <90acd438ea033aecee2de97ec977d69dbce72ac1.1292284646.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292284646.git.scott.m.rifenbark@intel.com>
References: <cover.1292284646.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Mon, 13 Dec 2010 13:41:38 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] documentation/kernel-manual/kernel-how-to.xml: fixed typo bug 588
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
X-List-Received-Date: Tue, 14 Dec 2010 00:09:34 -0000

removed the ";" character that was part of the git log --pretty=oneline
command example.  This fixes bug [BUGID# 588].

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 85bd8f8..67f6a90 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -429,7 +429,7 @@ repository.
         &gt; eg: git whatchanged standard..common_pc-standard
 
      # summary of the changes
-     &gt; git log --pretty=oneline --;abbrev-commit &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
+     &gt; git log --pretty=oneline --abbrev-commit &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
 
      # source code changes (one combined diff)
      &gt; git diff &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
-- 
1.7.0.4


