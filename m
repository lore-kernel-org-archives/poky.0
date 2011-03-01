Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E801C4C80AAD
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 06:07:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="892542991"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2011 06:07:50 -0800
Message-Id: <b80d2de3ad935a47483d1e9c5a7ee4459a9f9461.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 14:42:56 -0600
Date: Tue, 01 Mar 2011  8:08:42 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 04/12] [BUGID# 553] - documentation/poky-ref-manual/introduction.xml: Fixed pokylinux.org URL
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:51 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the Releases section (1.5.1) there was an URL to
http://pokylinux.org/releases.  This URL was old and I replaced it
with http://yoctoproject.org/downloads/poky.  This partially fixes
bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/introduction.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index c7cca8f..97e7311 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -118,7 +118,7 @@
         <title>Releases</title>
 
         <para>Periodically, we make releases of Poky available
-            at <ulink url='http://pokylinux.org/releases/'/>.
+            at <ulink url='http://yoctoproject.org/downloads/poky/'/>.
             These releases are more stable and more rigorously tested than the nightly development images.
         </para>
     </section>
-- 
1.7.1


