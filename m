Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C5E14C80592
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 15:53:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2011 13:53:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,242,1297065600"; d="scan'208";a="607432012"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 28 Feb 2011 13:53:34 -0800
Message-Id: <6ef8ce686d71e9828be329b5ad85f4bed60eda0b.1298929971.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298929971.git.scott.a.garman@intel.com>
References: <cover.1298929971.git.scott.a.garman@intel.com>
Old-Date: Mon, 28 Feb 2011 13:47:14 -0800
Date: Mon, 28 Feb 2011 13:53:50 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] distro_tracking_fields.inc: add transfig and linuxdoc-tools recipes
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
X-List-Received-Date: Mon, 28 Feb 2011 21:53:49 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 35b56fa..af8a7f3 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -5598,3 +5598,23 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-docbook-utils = "1 month"
 RECIPE_COMMENTS_pn-docbook-utils = ""
 RECIPE_LAST_UPDATE_pn-docbook-utils = "Jan 26, 2011"
 RECIPE_MAINTAINER_pn-docbook-utils = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-transfig = "green"
+RECIPE_DEPENDENCY_CHECK_pn-transfig = "not done"
+RECIPE_LATEST_VERSION_pn-transfig = "3.2.5d"
+RECIPE_NO_OF_PATCHES_pn-transfig = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-transfig = "2010/07/23"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-transfig = "1 year"
+RECIPE_COMMENTS_pn-transfig = ""
+RECIPE_LAST_UPDATE_pn-transfig = "Feb 9, 2011"
+RECIPE_MAINTAINER_pn-transfig = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-linuxdoc-tools = "green"
+RECIPE_DEPENDENCY_CHECK_pn-linuxdoc-tools = "not done"
+RECIPE_LATEST_VERSION_pn-linuxdoc-tools = "0.9.66"
+RECIPE_NO_OF_PATCHES_pn-linuxdoc-tools = "3"
+RECIPE_LATEST_RELEASE_DATE_pn-linuxdoc-tools = "unknown"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-linuxdoc-tools = "unknown"
+RECIPE_COMMENTS_pn-linuxdoc-tools = ""
+RECIPE_LAST_UPDATE_pn-linuxdoc-tools = "Feb 25, 2011"
+RECIPE_MAINTAINER_pn-linuxdoc-tools = "Scott Garman <scott.a.garman@intel.com>"
-- 
1.7.4


