Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F00434C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 18:32:32 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2011 16:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,285,1291622400"; d="scan'208";a="694394170"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2011 16:32:32 -0800
Message-Id: <bc127e0ec9f4ef53df3f00332e1c10c5a6800266.1294359880.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1294359880.git.scott.m.rifenbark@intel.com>
References: <cover.1294359880.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Old-Date: Wed, 15 Dec 2010 14:31:39 -0800
Date: Thu, 06 Jan 2011 16:31:35 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] documentation/bsp-guide/bsp.xml: Commented out three sections.
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
X-List-Received-Date: Fri, 07 Jan 2011 00:32:33 -0000

There are some sections now that don't correspond one-to-one with the
standard file structure presented in section 1.1.  So I am commenting them
out for now.  Since I am still in the process of iterating on this
manual I don't want to just delete the information.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index f5fd217..08821aa 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -416,7 +416,7 @@ SRC_URI += "file://defconfig \
             </para></note>
             </section>
 
-<!--            <section id='bsp-filelayout-packages'>
+<!--        <section id='bsp-filelayout-packages'>
             <title>Other Software (meta-&lt;bsp_name&gt;/recipes-kernel/*)</title>
 
             <para>
-- 
1.7.0.4


