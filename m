Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B3324C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2011 06:07:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="607756663"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2011 06:07:47 -0800
Message-Id: <fa8a4eddb1d05a1ab036302c10db21c4afb9f96e.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 13:37:17 -0600
Date: Tue, 01 Mar 2011  8:08:39 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 02/12] documentation/poky-ref-manual/introduction.xml: [BUGID# 553] - Fixed pokylinux.org link in Nightly Build section
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:48 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the nightly build section (1.5.2) there is a reference to
http://autobuilder.pokylinux.org/.  This URL resolves to an autobuilder
page that has a bunch of pokylinux links.  I determined that the URL
http://autobuilder.yoctoproject.org/ also resolves to the autobuilder
page so I updated the URL to use the YP link.  This is a partial fix
to Bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/introduction.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index b2e3452..064c0cb 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -129,7 +129,7 @@
         <para>
             We make nightly builds of Poky for testing purposes and to make the
             latest developments available. The output from these builds is available
-            at <ulink url='http://autobuilder.pokylinux.org/'/>.
+            at <ulink url='http://autobuilder.yoctoproject.org/'/>.
             The numbers used in the builds increase for each subsequent build and can be used to 
             reference a specific build.
         </para>
-- 
1.7.1


