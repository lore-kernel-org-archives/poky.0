Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 996A6E003E2
	for <poky@yoctoproject.org>; Mon, 19 Aug 2013 14:47:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Aug 2013 14:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,915,1367996400"; d="scan'208";a="365128157"
Received: from qana.jf.intel.com ([10.7.201.146])
	by orsmga001.jf.intel.com with ESMTP; 19 Aug 2013 14:47:21 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 5919F5F825CD; Mon, 19 Aug 2013 14:45:22 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: elizabeth.flanagan@intel.com,
	poky@yoctoproject.org
Date: Mon, 19 Aug 2013 14:45:17 -0700
Message-Id: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] SDK_NAME: Change to include image name and machine.
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
X-List-Received-Date: Mon, 19 Aug 2013 21:47:26 -0000

[YOCTO #4618]

When building out multiple toolchains with the same target arch
you can end up having toolchains with the same name. Making
the naming a bit more granular by adding IMAGE_BASENAME and
MACHINE to SDK_NAME

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 7be7d92..f0da032 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
 
-SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
+SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${MACHINE}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 EXTRAOPKGCONFIG = "poky-feed-config-opkg"
-- 
1.8.1.2


