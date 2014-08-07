Return-Path: <max.eliaser@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC062E00781; Thu,  7 Aug 2014 14:22:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E122E00769
	for <poky@yoctoproject.org>; Thu,  7 Aug 2014 14:22:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Aug 2014 14:17:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,820,1400050800"; d="scan'208";a="584990830"
Received: from maxtothemax-studio-xps-8000.jf.intel.com ([10.7.196.63])
	by orsmga002.jf.intel.com with ESMTP; 07 Aug 2014 14:22:52 -0700
From: Max Eliaser <max.eliaser@intel.com>
To: poky@yoctoproject.org
Date: Thu,  7 Aug 2014 14:20:37 -0700
Message-Id: <bda063517699bfd64d3c5662b115dd407969c737.1407446390.git.max.eliaser@intel.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <cover.1407446390.git.max.eliaser@intel.com>
References: <cover.1407446390.git.max.eliaser@intel.com>
In-Reply-To: <cover.1407446390.git.max.eliaser@intel.com>
References: <cover.1407446390.git.max.eliaser@intel.com>
Subject: [PATCH 1/1] meta-yocto: delete references to ubootchart recipe
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
X-List-Received-Date: Thu, 07 Aug 2014 21:22:58 -0000

Since ubootchart is being removed from meta-oe, meta-yocto should no longer
mention it either.

The Ubootchart recipe had known issues. Ubootchart itself is no longer updated
upstream. Ubootchart is also now redundant with Bootchart2.

If people still want ubootchart around, it can be moved to meta-oe.

Ubootchart removed as part of the solution to [YOCTO #5893].

Signed-off-by: Max Eliaser <max.eliaser@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc      | 1 -
 meta-yocto/conf/distro/include/maintainers.inc       | 1 -
 meta-yocto/conf/distro/include/recipe_color.inc      | 1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc | 2 --
 4 files changed, 5 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 48c1d92..5e2f214 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -435,7 +435,6 @@ DISTRO_PN_ALIAS_pn-tremor = "OSPDT upstream=http://www.xiph.org/vorbis/"
 DISTRO_PN_ALIAS_pn-tslib = "Debian=tslib Ubuntu=tslib"
 DISTRO_PN_ALIAS_pn-ttf-bitstream-vera = "Debian=ttf-bitstream-vera Ubuntu=ttf-bitstream-vera"
 DISTRO_PN_ALIAS_pn-tzcode = "OSPDT"
-DISTRO_PN_ALIAS_pn-ubootchart = "OSPDT upstream=http://code.google.com/p/ubootchart"
 DISTRO_PN_ALIAS_pn-u-boot-fw-utils = "Ubuntu=u-boot-tools Debian=u-boot-tools"
 DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
 DISTRO_PN_ALIAS_pn-udev-extraconf = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 6940d9e..eaadac3 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -654,7 +654,6 @@ RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-ubootchart = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-udev-extraconf = "Saul Wold <sgw@linux.intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 7e50500..5474e83 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -383,7 +383,6 @@ RECIPE_COLOR_pn-trapproto = "yellow"
 RECIPE_COLOR_pn-tslib = "yellow"
 RECIPE_COLOR_pn-ttf-bitstream-vera = "yellow"
 RECIPE_COLOR_pn-tzdata = "yellow"
-RECIPE_COLOR_pn-ubootchart = "red"
 RECIPE_COLOR_pn-u-boot-mkimage = "red"
 RECIPE_COLOR_pn-udev = "yellow"
 RECIPE_COLOR_pn-udev-extraconf = "yellow"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index a018803..efd677a 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -212,8 +212,6 @@ RECIPE_UPSTREAM_VERSION_pn-tremor="20120122"
 RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
 CHECK_DATE_pn-tremor = "Mar 11, 2013"
 RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
-RECIPE_UPSTREAM_VERSION_pn-ubootchart = "0.0+r12"
-CHECK_DATE_pn-ubootchart = "Sep 11, 2012"
 RECIPE_UPSTREAM_DATE_pn-udev-extraconf = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-unifdef-native="2.6.18+git"
 RECIPE_UPSTREAM_DATE_pn-unifdef-native = "Feb 05, 2011"
-- 
1.8.3.2


