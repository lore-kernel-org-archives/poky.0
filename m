Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23BB4E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 14:06:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Aug 2013 14:06:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,930,1367996400"; d="scan'208";a="349809970"
Received: from qana.jf.intel.com ([10.7.201.146])
	by azsmga001.ch.intel.com with ESMTP; 21 Aug 2013 14:06:25 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id CEF1D5F823C1; Wed, 21 Aug 2013 14:04:24 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2013 14:04:16 -0700
Message-Id: <1377119056-32017-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCHv2] SDK_NAME: Change to include image name and tune arch
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
X-List-Received-Date: Wed, 21 Aug 2013 21:06:48 -0000

[YOCTO #4618]

When building out multiple toolchains with the same target arch
you can end up having toolchains with the same name. Making
the naming a bit more granular by adding IMAGE_BASENAME and
TUNE_PKGARCH to SDK_NAME and removing TARGET_ARCH from SDK_NAME

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 7be7d92..de85a68 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
 
-SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
+SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 EXTRAOPKGCONFIG = "poky-feed-config-opkg"
-- 
1.7.9.5


