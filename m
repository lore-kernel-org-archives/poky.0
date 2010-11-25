Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3177E4C811CE
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 02:50:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="353142951"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 02:50:33 -0800
Message-Id: <bf805cf465317c701d73322fc5e27316fb872063.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 13:29:25 +0800
To: poky@yoctoproject.org
Subject: [PATCH 07/20] python-pygobject:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:34 -0000

Add COPYING file checksum to bb file and update the "LGPL" to "LGPLv2.1" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../python/python-pygobject_2.21.1.bb              |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/python/python-pygobject_2.21.1.bb b/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
index b815e4c..b438447 100644
--- a/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
+++ b/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Python GObject bindings"
 SECTION = "devel/python"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=a916467b91076e631dd8edb7424769c7"
 DEPENDS = "python-pygobject-native-${PV} glib-2.0"
 PR = "ml0"
 
-- 
1.6.3.3


