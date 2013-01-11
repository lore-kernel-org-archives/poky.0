Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FF5E006D2
	for <poky@yoctoproject.org>; Fri, 11 Jan 2013 14:13:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2013 14:12:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,455,1355126400"; d="scan'208";a="245422660"
Received: from unknown (HELO localhost) ([10.255.14.242])
	by orsmga001.jf.intel.com with ESMTP; 11 Jan 2013 14:13:20 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 11 Jan 2013 16:13:16 -0600
Message-Id: <aa211a141011adbeccfafab4be7444a5f3b0de0d.1357930527.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <c1c4117afa545b11d40bc9c6e346514b648c0728.1357930527.git.tom.zanussi@intel.com>
References: <c1c4117afa545b11d40bc9c6e346514b648c0728.1357930527.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357930527.git.tom.zanussi@intel.com>
References: <cover.1357930527.git.tom.zanussi@intel.com>
Subject: [PATCH 5/5] recipe_color.inc: add lttng recipes
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
X-List-Received-Date: Fri, 11 Jan 2013 22:13:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add entries for the new lttng-2.0 recipes lttng-modules, lttng-tools,
and babeltrace, to maintain consistency.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-yocto/conf/distro/include/recipe_color.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 2c9a5c6..9402a93 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -250,7 +250,10 @@ RECIPE_COLOR_pn-lighttpd = "yellow"
 RECIPE_COLOR_pn-linuxdoc-tools = "yellow"
 RECIPE_COLOR_pn-loudmouth = "red"
 RECIPE_COLOR_pn-lrzsz="yellow"
+RECIPE_COLOR_pn-lttng-modules = "yellow"
+RECIPE_COLOR_pn-lttng-tools = "yellow"
 RECIPE_COLOR_pn-lttng-ust = "yellow"
+RECIPE_COLOR_pn-babeltrace = "yellow"
 RECIPE_COLOR_pn-makedevs = "yellow"
 RECIPE_COLOR_pn-man = "red"
 RECIPE_COLOR_pn-man-pages = "red"
-- 
1.7.11.4


