Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DC934C80A47
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 17:16:04 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Feb 2011 15:15:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="388727416"
Received: from unknown (HELO localhost) ([10.255.15.30])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 15:15:43 -0800
Message-Id: <05ac368888879255a30bec604d92cddef1b589af.1297724957.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1297724957.git.scott.m.rifenbark@intel.com>
References: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 9 Feb 2011 12:32:15 -0600
Date: Mon, 14 Feb 2011 17:16:13 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 5/6] documentation/kernel-manual/kernel-how-to.xml: Fixed type
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
X-List-Received-Date: Mon, 14 Feb 2011 23:16:04 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In section 4.3.3 step 2 there was a directory 'build/donf/bblayers.conf'.
I fixed the typo to 'build/conf/bblayers.conf'.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 01a78e6..07e4d78 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1054,7 +1054,7 @@ That's it. Configure and build.
                         For this example the only thing left was the kernel directory with a 
                         <filename>linux-yocto_git.bbappend</filename> file (linux-yocto is the kernel listed in 
                         <filename>meta-crownbay/conf/machine/crownbay.conf</filename></para></listitem>.
-                        <listitem><para>Add a new entry in the <filename>build/donf/bblayers.conf</filename> 
+                        <listitem><para>Add a new entry in the <filename>build/conf/bblayers.conf</filename> 
                         so the new layer can be found by Bitbake.</para></listitem>
                     </itemizedlist>
                 </para></listitem>
-- 
1.7.1


