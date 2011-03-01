Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08EFA4C80AA8
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:08:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2011 06:08:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="714684214"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2011 06:08:00 -0800
Message-Id: <6082d359581e404c4705670d565ffeb6f8a65014.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 17:01:33 -0600
Date: Tue, 01 Mar 2011  8:08:52 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 11/12] [BUGID# 553] - documentation/poky-ref-manual/resources.xml: Fixed pokylinux URL
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
X-List-Received-Date: Tue, 01 Mar 2011 14:08:01 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In appendix I in the Contributions section (I.6) there is
mention of a Poky contributions tree and the URL
git://git.pokylinux.org/poky-contrib.git is given.  I changed this
URL to git://git.yoctoproject.org/poky-contrib.git.

This is a partial fix for but 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/resources.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index 888610c..dd4b58d 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -149,7 +149,7 @@
 </programlisting>
 
     <para>
-        A Poky contributions tree (poky-contrib, git://git.pokylinux.org/poky-contrib.git)
+        A Poky contributions tree (poky-contrib, git://git.yoctoproject.org/poky-contrib.git)
         exists for people to stage contributions in, for regular contributors.
         If people desire such access, please ask on the mailing list. Usually
         access will be given to anyone with a proven track record of good patches.
-- 
1.7.1


