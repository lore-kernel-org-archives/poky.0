Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 732654C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 10:17:08 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 08:17:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,223,1288594800"; d="scan'208";a="679140658"
Received: from unknown (HELO localhost) ([10.255.16.123])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 08:17:07 -0800
Message-Id: <00ec71b3834779b9c4a278b403729f2822a41845.1290179273.git.josh@linux.intel.com>
In-Reply-To: <cover.1290179273.git.josh@linux.intel.com>
References: <cover.1290179273.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 19 Nov 2010 11:59:01 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] poky.conf: move the SDK install into version directories
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
X-List-Received-Date: Fri, 19 Nov 2010 16:17:08 -0000

It's desirable to be able to have SDK toolchains installed from multiple
versions of Poky, enable this by installing the toolchains into a subdirectory
of /opt/poky/ based on the distro version.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index b3c9f1a..ca73e64 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -60,7 +60,7 @@ POKYLIBC ?= "eglibc"
 require conf/distro/include/poky-${POKYLIBC}.inc
 
 SDK_NAME = "${DISTRO}-${POKYLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
-SDKPATH = "/opt/${DISTRO}"
+SDKPATH = "/opt/${DISTRO}/${DISTRO_VERSION}"
 
 CACHE = "${TMPDIR}/cache/${POKYMODE}-${POKYLIBC}${@['', '/' + str(bb.data.getVar('MACHINE', d, 1))][bool(bb.data.getVar('MACHINE', d, 1))]}${@['', '/' + str(bb.data.getVar('SDKMACHINE', d, 1))][bool(bb.data.getVar('SDKMACHINE', d, 1))]}"
 
-- 
1.7.3.2


