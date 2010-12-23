Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 465374C81081
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 07:55:47 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Dec 2010 05:55:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="639774008"
Received: from unknown (HELO helios) ([10.255.16.56])
	by fmsmga002.fm.intel.com with SMTP; 23 Dec 2010 05:55:45 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 13:55:45 +0000
Message-Id: <9a98042f6dd67391f88344a55db8496aede12bf5.1293112192.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293112192.git.paul.eggleton@linux.intel.com>
References: <cover.1293112192.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 13:04:02 +0000
Date: Thu, 23 Dec 2010 13:55:45 +0000
To: poky@yoctoproject.org,scott.m.rifenbark@intel.com
Subject: [PATCH 1/2] documentation/bsp-guide/bsp.xml: fix typo in variable name
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
X-List-Received-Date: Thu, 23 Dec 2010 13:55:47 -0000

FILESEXTRAPATH -> FILESEXTRAPATHS

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/bsp-guide/bsp.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index f5fd217..7013974 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -481,7 +481,7 @@ meta-Emenlow/recipes-Emenlow/image-creator/image-creator-native_0.1.bb
                 This allows the BSP layer to do whatever it might want to do to customize the original recipe.
             </para>
             <para>
-                If your recipe needs to reference extra files it can use the FILESEXTRAPATH variable
+                If your recipe needs to reference extra files it can use the FILESEXTRAPATHS variable
                 to specify their location. 
                 The example below shows extra files contained in a folder called ${PN} (the package name).
             </para>
-- 
1.7.1


