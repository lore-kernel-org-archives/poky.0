Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 79EF34C800AD
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 08:23:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Feb 2011 06:23:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="886229595"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2011 06:23:44 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 10 Feb 2011 22:25:47 +0800
Message-Id: <28b8c881b2d8d3b0703fceae8dfbbc571b8913d3.1297344410.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297344409.git.ke.yu@intel.com>
References: <cover.1297344409.git.ke.yu@intel.com>
Subject: [PATCH 2/2] mesa-dri-7.10: add missing dependency makedepend
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
X-List-Received-Date: Thu, 10 Feb 2011 14:23:45 -0000

mesa 7.10 has dependency on makedepend-native, so add it
to resolve the configure failure

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/mesa/mesa-dri_7.10.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/mesa/mesa-dri_7.10.bb b/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
index cca1cc9..1865dd4 100644
--- a/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
+++ b/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
@@ -6,9 +6,9 @@ PROTO_DEPS = "xf86driproto glproto dri2proto"
 LIB_DEPS = "libdrm virtual/libx11 libxext libxxf86vm libxdamage libxfixes expat \
             libxml2-native"
 
-DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
+DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS} makedepend-native"
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
            file://talloc-removal.patch \
-- 
1.7.0.4


