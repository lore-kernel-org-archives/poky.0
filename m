Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C5FDE4C811FB
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 16:41:15 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 14:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701449907"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 14:41:14 -0800
Message-Id: <956a731085fae724b95dc6de00a234ca7cd2d779.1296167950.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296167950.git.scott.a.garman@intel.com>
References: <cover.1296167950.git.scott.a.garman@intel.com>
Old-Date: Thu, 27 Jan 2011 14:36:02 -0800
Date: Thu, 27 Jan 2011 14:42:09 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 9/9] distro_tracking_fields.inc: added docbook-utils and dependencies
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
X-List-Received-Date: Thu, 27 Jan 2011 22:41:16 -0000

From: Scott Garman <scott.a.garman@intel.com>

These are distro tracking field additions for recipes used for
creating documentation: sgml-common, docbook-sgml-dtd,
docbook-dsssl-stylesheet, sgmlspl, opensp, openjade, docbook-utils

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   69 ++++++++++++++++++++
 1 files changed, 69 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 41fd454..ad24a2b 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -5446,3 +5446,72 @@ RECIPE_LATEST_VERSION_pn-man = "1.6f"
 RECIPE_LATEST_VERSION_pn-mc = "4.7.5pre1"
 RECIPE_NO_UPDATE_REASON_pn-bind = "Latest Stable version, 4.7.5pre1 is Alpha/Beta"
 
+RECIPE_STATUS_pn-sgml-common = "green"
+RECIPE_DEPENDENCY_CHECK_pn-sgml-common = "not done"
+RECIPE_LATEST_VERSION_pn-sgml-common = "0.6.3"
+RECIPE_NO_OF_PATCHES_pn-sgml-common = "1"
+RECIPE_LATEST_RELEASE_DATE_pn-sgml-common = "2001/05/25"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sgml-common = "unknown"
+RECIPE_COMMENTS_pn-sgml-common = ""
+RECIPE_LAST_UPDATE_pn-sgml-common = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-sgml-common = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-docbook-sgml-dtd = "green"
+RECIPE_DEPENDENCY_CHECK_pn-docbook-sgml-dtd = "not done"
+RECIPE_LATEST_VERSION_pn-docbook-sgml-dtd = "4.5"
+RECIPE_NO_OF_PATCHES_pn-docbook-sgml-dtd = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-docbook-sgml-dtd = "2010/05/21"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-docbook-sgml-dtd = "unknown"
+RECIPE_COMMENTS_pn-docbook-sgml-dtd = ""
+RECIPE_LAST_UPDATE_pn-docbook-sgml-dtd = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-docbook-sgml-dtd = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-docbook-dsssl-stylesheet = "green"
+RECIPE_DEPENDENCY_CHECK_pn-docbook-dsssl-stylesheet = "not done"
+RECIPE_LATEST_VERSION_pn-docbook-dsssl-stylesheet = "1.79"
+RECIPE_NO_OF_PATCHES_pn-docbook-dsssl-stylesheet = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-docbook-dsssl-stylesheet = "2008/08/12"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-docbook-dsssl-stylesheet = "unknown"
+RECIPE_COMMENTS_pn-docbook-dsssl-stylesheet = ""
+RECIPE_LAST_UPDATE_pn-docbook-dsssl-stylesheet = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-docbook-dsssl-stylesheet = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-sgmlspl = "green"
+RECIPE_DEPENDENCY_CHECK_pn-sgmlspl = "not done"
+RECIPE_LATEST_VERSION_pn-sgmlspl = "1.03ii"
+RECIPE_NO_OF_PATCHES_pn-sgmlspl = "1"
+RECIPE_LATEST_RELEASE_DATE_pn-sgmlspl = "1995/12/07"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sgmlspl = "5 days"
+RECIPE_COMMENTS_pn-sgmlspl = ""
+RECIPE_LAST_UPDATE_pn-sgmlspl = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-sgmlspl = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-opensp = "green"
+RECIPE_DEPENDENCY_CHECK_pn-opensp = "not done"
+RECIPE_LATEST_VERSION_pn-opensp = ""
+RECIPE_NO_OF_PATCHES_pn-opensp = "4"
+RECIPE_LATEST_RELEASE_DATE_pn-opensp = "2002/11/24"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-opensp = "2 years"
+RECIPE_COMMENTS_pn-opensp = ""
+RECIPE_LAST_UPDATE_pn-opensp = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-opensp = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-openjade = "green"
+RECIPE_DEPENDENCY_CHECK_pn-openjade = "not done"
+RECIPE_LATEST_VERSION_pn-openjade = "1.3.2"
+RECIPE_NO_OF_PATCHES_pn-openjade = "3"
+RECIPE_LATEST_RELEASE_DATE_pn-openjade = "2002/12/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-openjade = "8 months"
+RECIPE_COMMENTS_pn-openjade = ""
+RECIPE_LAST_UPDATE_pn-openjade = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-openjade = "Scott Garman <scott.a.garman@intel.com>"
+
+RECIPE_STATUS_pn-docbook-utils = "green"
+RECIPE_DEPENDENCY_CHECK_pn-docbook-utils = "not done"
+RECIPE_LATEST_VERSION_pn-docbook-utils = "0.6.14"
+RECIPE_NO_OF_PATCHES_pn-docbook-utils = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-docbook-utils = "2004/02/11"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-docbook-utils = "1 month"
+RECIPE_COMMENTS_pn-docbook-utils = ""
+RECIPE_LAST_UPDATE_pn-docbook-utils = "Jan 26, 2011"
+RECIPE_MAINTAINER_pn-docbook-utils = "Scott Garman <scott.a.garman@intel.com>"
-- 
1.7.3.5


