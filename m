Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CE214C811FF
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:46:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2010 08:46:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="360961195"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 08:46:46 -0800
Message-Id: <d95818be3cf3f36dd840493c4f950185a3528c67.1292258655.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292258655.git.nitin.a.kamble@intel.com>
References: <cover.1292258655.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Thu, 9 Dec 2010 13:10:07 -0800
To: poky@yoctoproject.org
Subject: [PATCH 5/6] python-pygobject: upgrade from 2.21.1 to 2.27.0
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
X-List-Received-Date: Mon, 13 Dec 2010 16:46:51 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 ...2.21.1.bb => python-pygobject-native_2.27.0.bb} |    0
 ...object_2.21.1.bb => python-pygobject_2.27.0.bb} |    2 +-
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-devtools/python/{python-pygobject-native_2.21.1.bb => python-pygobject-native_2.27.0.bb} (100%)
 rename meta/recipes-devtools/python/{python-pygobject_2.21.1.bb => python-pygobject_2.27.0.bb} (98%)

diff --git a/meta/recipes-devtools/python/python-pygobject-native_2.21.1.bb b/meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb
similarity index 100%
rename from meta/recipes-devtools/python/python-pygobject-native_2.21.1.bb
rename to meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb
diff --git a/meta/recipes-devtools/python/python-pygobject_2.21.1.bb b/meta/recipes-devtools/python/python-pygobject_2.27.0.bb
similarity index 98%
rename from meta/recipes-devtools/python/python-pygobject_2.21.1.bb
rename to meta/recipes-devtools/python/python-pygobject_2.27.0.bb
index ca93c68..4356108 100644
--- a/meta/recipes-devtools/python/python-pygobject_2.21.1.bb
+++ b/meta/recipes-devtools/python/python-pygobject_2.27.0.bb
@@ -3,7 +3,7 @@ SECTION = "devel/python"
 LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=a916467b91076e631dd8edb7424769c7"
 DEPENDS = "python-pygobject-native-${PV} glib-2.0"
-PR = "ml0"
+PR = "r0"
 
 MAJ_VER = "${@bb.data.getVar('PV',d,1).split('.')[0]}.${@bb.data.getVar('PV',d,1).split('.')[1]}"
 
-- 
1.7.2.2


