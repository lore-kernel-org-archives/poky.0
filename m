Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56C3F4C80AB9
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:58:56 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Mar 2011 09:58:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404782193"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 09:58:55 -0700
Message-Id: <944d0654092c1a34060b533a409a78d31f81e821.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 16:25:08 -0600
Date: Fri, 18 Mar 2011 10:59:48 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 07/15] documentation/poky-ref-manual/introduction.xml: Removed link
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
X-List-Received-Date: Fri, 18 Mar 2011 16:58:56 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Removed a link to the Intel Website.  Upon testing this link I
discovered that it loads the Intel site into the current web
page and then disables the back button.  Rather annoying. I tried
to change the link to pop a new window but couldn't get the
ulink.target parameter to work.  Ran out of time to try and figure
it out so I removed the link.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/introduction.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index 59c6eea..1701713 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -69,7 +69,7 @@
 
     <para>
         Poky has a growing open source community and is also backed up by commercial organizations 
-        including <ulink url="http://www.intel.com/">Intel Corporation</ulink>.
+        including Intel&reg; Corporation.
     </para>
 </section>
 
-- 
1.7.1


