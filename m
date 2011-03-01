Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69EA44C80AA9
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2011 06:07:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="714684122"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2011 06:07:48 -0800
Message-Id: <67771e796466d3da9653e57c269003a9190c4f2b.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 13:54:07 -0600
Date: Tue, 01 Mar 2011  8:08:40 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 03/12] documentation/poky-ref-manual/introduction.xml: [BUGID# 553] - Fixed pokylinux URL
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:49 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

    [BUGID# 553] - In the Development Checkouts section (1.5.3)
    there is a reference to
    http://git.pokylinux.org/.  This URL resolves to an older looking
    source area.  I determined that the URL
    http://git.yoctoproject.org/ resolves to the newer Yocto source
    web interface so I changed the URL to that.
    This is a partial fix
    to Bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/introduction.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index 064c0cb..c7cca8f 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -153,7 +153,7 @@
         <para>
             Poky is available from our git repository located at
             git://git.pokylinux.org/poky.git; a web interface to the repository
-            can be accessed at <ulink url='http://git.pokylinux.org/'/>.
+            can be accessed at <ulink url='http://git.yoctoproject.org/'/>.
         </para>
 
         <para>
-- 
1.7.1


