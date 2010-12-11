Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B8F04C811F5
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 18:28:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2010 16:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,339,1288594800"; d="scan'208";a="583405522"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 16:28:13 -0800
Message-Id: <e47592067070ba0639d307516a3416f7274e638d.1292286117.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292286117.git.scott.m.rifenbark@intel.com>
References: <cover.1292286117.git.scott.m.rifenbark@intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Sat, 11 Dec 2010 07:24:48 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] bsp-guide: correct BBPATH example
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
X-List-Received-Date: Tue, 14 Dec 2010 00:28:14 -0000

The BBPATH example was missing a : to separate the path elements.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 documentation/bsp-guide/bsp.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 47722bb..ecf6431 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -117,7 +117,7 @@ meta-bsp/prebuilds/
             <para>
                <programlisting>
 # We have a conf directory, add to BBPATH
-BBPATH := "${BBPATH}${LAYERDIR}"
+BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a recipes directory containing .bb and .bbappend files, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \ ${LAYERDIR}/recipes/*/*.bbappend"
-- 
1.7.0.4


