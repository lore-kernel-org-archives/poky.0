Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C31894C80FD4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:00:10 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898726328"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 09:58:54 -0700
Message-Id: <5c0711f00125774cf9e55bcfcfc881cd2545aa8b.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 10:56:02 -0600
Date: Fri, 18 Mar 2011 10:59:47 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 06/15] documentation/poky-ref-manual/faq.xml: Spell Check
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
X-List-Received-Date: Fri, 18 Mar 2011 17:00:10 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Performed a spell check and corrected several problems.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/faq.xml |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 03ae714..96e32d5 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -108,7 +108,7 @@
                 </listitem>
                 <listitem>
                     <para>
-                    Send us bitbake recipes if you have them (see the Poky handbook to find out how to create recipes)
+                    Send us BitBake recipes if you have them (see the Poky handbook to find out how to create recipes)
                     </para>
                 </listitem>
             </itemizedlist>
@@ -148,7 +148,7 @@
         </question>
         <answer>
             <para>
-                To add a package you need to create a bitbake recipe - see the Poky handbook to find out how to create a recipe.
+                To add a package you need to create a BitBake recipe - see the Poky handbook to find out how to create a recipe.
             </para>
         </answer>
     </qandaentry>
@@ -332,19 +332,19 @@
         </question>
         <answer>
             <para>
-                If the same build is failing in totally different and random ways the most likely explaination is that either the hardware you're running it on has some problem or if you are running it under virtualisation, the virtualisation probably has bugs. Poky processes a massive amount of data causing lots of network, disk and cpu activity and is senstive to even single bit failure in any of these areas. Totally random failures have always been traced back to hardware or virtualisation issues.
+                If the same build is failing in totally different and random ways the most likely explanation is that either the hardware you're running it on has some problem or if you are running it under virtualisation, the virtualisation probably has bugs. Poky processes a massive amount of data causing lots of network, disk and cpu activity and is sensitive to even single bit failure in any of these areas. Totally random failures have always been traced back to hardware or virtualisation issues.
             </para>
         </answer>
     </qandaentry>
     <qandaentry>
         <question>
             <para>
-                What do we need to ship for licence complience?
+                What do we need to ship for license compliance?
             </para>
         </question>
         <answer>
             <para>
-                This is a difficult question and you need to consult your lawyer for the answer for your specific case. Its worth bearing in mind that for GPL complience there needs to be enough information shipped to allow someone else to rebuild the same end result as you are shipping. This means sharing the source code, any patches applied to it but also any configuration information about how that package was configured and built.
+                This is a difficult question and you need to consult your lawyer for the answer for your specific case. Its worth bearing in mind that for GPL compliance there needs to be enough information shipped to allow someone else to rebuild the same end result as you are shipping. This means sharing the source code, any patches applied to it but also any configuration information about how that package was configured and built.
             </para>
         </answer>
     </qandaentry>
-- 
1.7.1


