Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B7E8E01439
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 16:19:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Aug 2012 16:18:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,335,1344236400"; d="scan'208";a="215938780"
Received: from unknown (HELO localhost) ([10.255.13.47])
	by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2012 16:18:47 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Wed, 29 Aug 2012 18:18:43 -0500
Message-Id: <e78f3a332f03a237d4ac3baef6b4c5979c185c03.1346282120.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346282120.git.tom.zanussi@intel.com>
References: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346282120.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1346282120.git.tom.zanussi@intel.com>
References: <cover.1346282120.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] yocto-bsp: add a LICENSE_FLAGS_WHITELIST blurb for emgd to README
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
X-List-Received-Date: Wed, 29 Aug 2012 23:19:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a text snippet to the README to say that if emgd-driver-bin is
included in the BSP, LICENSE_FLAGS_WHITELIST needs to be set to for a
successful build.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/substrate/target/arch/common/README | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/common/README b/scripts/lib/bsp/substrate/target/arch/common/README
index 928659f..228c0e2 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/README
+++ b/scripts/lib/bsp/substrate/target/arch/common/README
@@ -65,6 +65,14 @@ You should then be able to build a {{=machine}} image as such:
   $ source oe-init-build-env
   $ bitbake core-image-sato
 
+NOTE: if the '{{=machine}}' machine includes the emgd-driver-bin
+package (i.e. if the emgd version of the xserver is being used), it
+has a proprietary license that must be whitelisted by adding the
+string "license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST
+variable in your local.conf.  For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
+
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
-- 
1.7.11.4


