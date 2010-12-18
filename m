Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 23C264C811E6
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:24:02 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034113"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:59 -0800
Message-Id: <0eb9d5487ac8a38f2ef818bfd0d6463395a2f2b8.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Fri, 17 Dec 2010 16:29:53 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 27/29] documentation/bsp-guide/bsp.xml: replaced the append file line in the template
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
X-List-Received-Date: Mon, 20 Dec 2010 20:24:02 -0000

Section 1.1 has the example filesystem layout.  The last line of the
example filesystem layout had linux-wrs.  It has been changed to
linux-yocto-stable.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index ff8a481..7909bb5 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -83,7 +83,7 @@ meta-&lt;bsp_name&gt;/conf/layer.conf
 meta-&lt;bsp_name&gt;/conf/machine/*.conf
 meta-&lt;bsp_name&gt;/recipes-bsp/*
 meta-&lt;bsp_name&gt;/recipes-graphics/*            
-meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-wrs_git.bbappend
+meta-&lt;bsp_name&gt;/recipes-kernel/linux/linux-yocto-stable.bbappend
                 </programlisting>
             </para>
 
-- 
1.7.0.4


