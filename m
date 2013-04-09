Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA00E01473
	for <poky@yoctoproject.org>; Tue,  9 Apr 2013 07:22:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2013 07:22:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,439,1363158000"; d="scan'208";a="225057650"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.195])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Apr 2013 07:22:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  9 Apr 2013 15:21:59 +0100
Message-Id: <0411c0c4b6570297dcda0f9e396f525b993062a5.1365517250.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365517250.git.paul.eggleton@linux.intel.com>
References: <cover.1365517250.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365517250.git.paul.eggleton@linux.intel.com>
References: <cover.1365517250.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/3] meta-yocto*/conf/layer.conf: tweak BBFILES comments
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Apr 2013 14:22:06 -0000

"packages" was the old name (pre-2010) under which the recipe files were
stored.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto-bsp/conf/layer.conf |    2 +-
 meta-yocto/conf/layer.conf     |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 18544bd..2be7cc3 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH .= ":${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 89ed171..e012f24 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -1,7 +1,7 @@
 # We have a conf and classes directory, add to BBPATH
 BBPATH =. "${LAYERDIR}:"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
-- 
1.7.10.4


