Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66A0E006D2
	for <poky@yoctoproject.org>; Fri, 11 Jan 2013 14:13:19 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 11 Jan 2013 14:13:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,455,1355126400"; d="scan'208";a="190326386"
Received: from unknown (HELO localhost) ([10.255.14.242])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Jan 2013 14:13:17 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 11 Jan 2013 16:13:15 -0600
Message-Id: <c1c4117afa545b11d40bc9c6e346514b648c0728.1357930527.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1357930527.git.tom.zanussi@intel.com>
References: <cover.1357930527.git.tom.zanussi@intel.com>
Subject: [PATCH 4/5] lttng: remove references to legacy lttng recipes
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
X-List-Received-Date: Fri, 11 Jan 2013 22:13:20 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

'legacy' lttng was removed, so we need to remove the references to
the legacy lttng recipes, namely lttng-control and lttng-viewer.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 2 --
 meta-yocto/conf/distro/include/maintainers.inc  | 2 --
 meta-yocto/conf/distro/include/recipe_color.inc | 2 --
 3 files changed, 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 1994e27..879ae60 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -221,11 +221,9 @@ DISTRO_PN_ALIAS_pn-lsbinitscripts = "Windriver"
 DISTRO_PN_ALIAS_pn-lsbsetup = "Windriver"
 DISTRO_PN_ALIAS_pn-lsbtest = "Windriver"
 DISTRO_PN_ALIAS_pn-ltp = "Ubuntu=ltp"
-DISTRO_PN_ALIAS_pn-lttng-control = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-lttng-modules = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-lttng-tools = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-lttng-ust = "OSPDT upstream=http://lttng.org/"
-DISTRO_PN_ALIAS_pn-lttng-viewer = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-makedepend = "Mandriva=makedepend Ubuntu=xutils-dev"
 DISTRO_PN_ALIAS_pn-makedevs = "OE-Core"
 DISTRO_PN_ALIAS_pn-matchbox-config-gtk = "OpenedHand"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 6de57dc..69595b3 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -490,11 +490,9 @@ RECIPE_MAINTAINER_pn-lsbtest = "Yi Zhao <yi.zhao@windriver.com>"
 RECIPE_MAINTAINER_pn-lsb = "Yi Zhao <yi.zhao@windriver.com>"
 RECIPE_MAINTAINER_pn-lsof = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-ltp = "Mihai Lindner <mihaix.lindner@linux.intel.com>"
-RECIPE_MAINTAINER_pn-lttng-control = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-modules = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-tools = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-ust = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-lttng-viewer = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-lzop-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lzop = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lzo = "Radu Moisan <radu.moisan@intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 012f5e2..2c9a5c6 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -250,9 +250,7 @@ RECIPE_COLOR_pn-lighttpd = "yellow"
 RECIPE_COLOR_pn-linuxdoc-tools = "yellow"
 RECIPE_COLOR_pn-loudmouth = "red"
 RECIPE_COLOR_pn-lrzsz="yellow"
-RECIPE_COLOR_pn-lttng-control = "yellow"
 RECIPE_COLOR_pn-lttng-ust = "yellow"
-RECIPE_COLOR_pn-lttng-viewer = "yellow"
 RECIPE_COLOR_pn-makedevs = "yellow"
 RECIPE_COLOR_pn-man = "red"
 RECIPE_COLOR_pn-man-pages = "red"
-- 
1.7.11.4


