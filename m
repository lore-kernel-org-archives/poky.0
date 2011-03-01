Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBBF34C80A7E
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2011 06:07:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="714684188"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2011 06:07:56 -0800
Message-Id: <641775b728b61093f1c6250a6faf4122d8ef87e3.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 16:16:32 -0600
Date: Tue, 01 Mar 2011  8:08:47 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 08/12] [BUGID# 553] - documentation/poky-ref-manual/faq.xml: Fixed pokylinux.org reference
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:57 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the FAQ appendix item H.12 there was a reference
to http://pokylinux.org/sources/* in the question portion.  The
reference should really be http://autobuilder.yoctoproject.org/sources/*.
I made the change.

This is a partial fix for bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/faq.xml |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 7a891b0..03ae714 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -248,7 +248,8 @@
     <qandaentry>
         <question>
             <para>
-                I see lots of 404 responses for files on http://pokylinux.org/sources/*. Is something wrong?
+                I see lots of 404 responses for files on 
+                http://autobuilder.yoctoproject.org/sources/*. Is something wrong?
             </para>
         </question>
         <answer>
-- 
1.7.1


