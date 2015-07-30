Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B056E00AAA; Thu, 30 Jul 2015 06:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 306A9E009B2
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 06:59:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2015 06:59:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,577,1432623600"; d="scan'208";a="758423287"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.143])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2015 06:59:23 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 30 Jul 2015 17:00:16 +0300
Message-Id: <7086660e2771a6c7a4cc1b4b91b1e88c32a88002.1438263355.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
References: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
In-Reply-To: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
References: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 1/3] distro_alias.inc: drop reference to Google Code
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
X-List-Received-Date: Thu, 30 Jul 2015 13:59:27 -0000

That service is shutting down soon.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index af35f90..ec8570d 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -458,7 +458,6 @@ DISTRO_PN_ALIAS_pn-tremor = "OSPDT upstream=http://www.xiph.org/vorbis/"
 DISTRO_PN_ALIAS_pn-tslib = "Debian=tslib Ubuntu=tslib"
 DISTRO_PN_ALIAS_pn-ttf-bitstream-vera = "Debian=ttf-bitstream-vera Ubuntu=ttf-bitstream-vera"
 DISTRO_PN_ALIAS_pn-tzcode = "OSPDT"
-DISTRO_PN_ALIAS_pn-ubootchart = "OSPDT upstream=http://code.google.com/p/ubootchart"
 DISTRO_PN_ALIAS_pn-u-boot-fw-utils = "Ubuntu=u-boot-tools Debian=u-boot-tools"
 DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
 DISTRO_PN_ALIAS_pn-udev-extraconf = "OE-Core"
-- 
2.1.4


