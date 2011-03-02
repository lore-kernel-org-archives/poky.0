Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9E3AE4C80AAE
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Mar 2011 10:00:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="396465471"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by azsmga001.ch.intel.com with ESMTP; 02 Mar 2011 10:00:27 -0800
Message-Id: <fb56ac6021fe09cb386c168f3fe0b11e04214972.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 16:16:32 -0600
Date: Wed, 02 Mar 2011 10:00:26 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 13/26] [BUGID# 553] - documentation/poky-ref-manual/faq.xml: Fixed pokylinux.org reference
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:28 -0000

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


