Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C9AA4C80BCF
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 16:13:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 14:13:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,344,1288594800"; d="scan'208";a="583743279"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.169])
	by orsmga002.jf.intel.com with ESMTP; 14 Dec 2010 14:13:56 -0800
Message-Id: <78c0263198f3b8753d788c4d71cfd6651fb43f37.1292365375.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1292365375.git.jessica.zhang@intel.com>
References: <cover.1292365375.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 14 Dec 2010 13:55:26 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] Introduce SDK_VERSION which is based on DISTRO_VERSION for fixing bug 586
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
X-List-Received-Date: Tue, 14 Dec 2010 22:13:57 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 meta/conf/distro/poky.conf |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index 10b3165..44e4134 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -4,6 +4,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Yocto (Built by Poky 4.0)"
 DISTRO_VERSION = "0.9+snapshot-${DATE}"
+SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
 
 MAINTAINER = "Poky <poky@yoctoproject.org>"
 
@@ -60,7 +61,7 @@ POKYLIBC ?= "eglibc"
 require conf/distro/include/poky-${POKYLIBC}.inc
 
 SDK_NAME = "${DISTRO}-${POKYLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
-SDKPATH = "/opt/${DISTRO}/${DISTRO_VERSION}"
+SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 CACHE = "${TMPDIR}/cache/${POKYMODE}-${POKYLIBC}${@['', '/' + str(bb.data.getVar('MACHINE', d, 1))][bool(bb.data.getVar('MACHINE', d, 1))]}${@['', '/' + str(bb.data.getVar('SDKMACHINE', d, 1))][bool(bb.data.getVar('SDKMACHINE', d, 1))]}"
 
-- 
1.7.0.4


