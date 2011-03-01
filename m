Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E32B44C80AA8
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:57 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 06:07:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="892543099"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2011 06:07:57 -0800
Message-Id: <e8db91b55351dc8931be3e5bc9ad963b75d085bf.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 16:37:57 -0600
Date: Tue, 01 Mar 2011  8:08:49 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 09/12] [BUGID# 553] - documentation/poky-ref-manual/resources.xml: Fixed pokylinux URL
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:58 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the "Bugtracker" section (appendix I - I.2) there is
a reference to the bugtracker.  The text shows just the string
"bug tracker" but the hidden URL was http://bugzilla.pokylinux.org.
I updated the text to say to report problems by using the Bugzilla
application and then gave the URL http://bugzilla.yoctoproject.org
as the reference.

This is a partial fix for bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/resources.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index b151b21..e6f7b26 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -18,8 +18,8 @@
     <title>Bugtracker</title>
 
     <para>
-        Problems with Poky should be reported in the 
-        <ulink url='http://bugzilla.pokylinux.org/'>bug tracker</ulink>.
+        Problems with Poky should be reported using the Bugzilla application at 
+        <ulink url='http://bugzilla.yoctoproject.org/'></ulink>.
     </para>
 </section>
 
-- 
1.7.1


