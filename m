Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DF5A4C811ED
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:45:05 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id C75A930534
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:59 -0500 (EST)
Message-Id: <4566714ee065af223ab9508be2cc4e3636cece77.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Wed, 5 Jan 2011 09:51:36 -0800
Date: Wed, 05 Jan 2011 13:44:57 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: C75A930534.A12EE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 8/8] distro_tracking_fields.inc: update apmd, blktool, dbus-glib, libgdbus, and pax-utils
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
X-List-Received-Date: Wed, 05 Jan 2011 21:45:05 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   45 ++++++++++---------
 1 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 16db013..4e5643c 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -230,14 +230,13 @@ RECIPE_MAINTAINER_pn-dbus = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-dbus-glib = "green"
 RECIPE_DEPENDENCY_CHECK_pn-dbus-glib = "not done"
-RECIPE_LATEST_VERSION_pn-dbus-glib = "0.86"
-RECIPE_PATCH_pn-dbus-glib+fix_asneeded = "added in 2009; adjust link order of expat. not sure the reason yet. disable for now"
+RECIPE_LATEST_VERSION_pn-dbus-glib = "0.92"
+RECIPE_NO_OF_PATCHES_pn-dbus-glib = "1"
 RECIPE_PATCH_pn-dbus-glib+no-examples = "no need to build example. local patch"
 RECIPE_INTEL_SECTION_pn-dbus-glib = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dbus-glib = "6 months"
-RECIPE_LATEST_RELEASE_DATE_pn-dbus-glib = "03/2010"
-RECIPE_COMMENTS_pn-dbus-glib = ""
-RECIPE_LAST_UPDATE_pn-dbus-glib = "Nov 17, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-dbus-glib = "11/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dbus-glib = "3 days"
+RECIPE_LAST_UPDATE_pn-dbus-glib = "Jan 4, 2011"
 RECIPE_MAINTAINER_pn-dbus-glib = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-neon="green"
@@ -843,12 +842,12 @@ RECIPE_MAINTAINER_pn-psplash = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-pax-utils = "green"
 RECIPE_DEPENDENCY_CHECK_pn-pax-utils = "not done"
-RECIPE_LATEST_VERSION_pn-pax-utils = "0.2.1"
+RECIPE_LATEST_VERSION_pn-pax-utils = "0.2.2"
+RECIPE_NO_OF_PATCHES_pn-pax-utils = "0"
 RECIPE_INTEL_SECTION_pn-pax-utils = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pax-utils = "15 months"
-RECIPE_LATEST_RELEASE_DATE_pn-pax-utils = "02/2010"
-RECIPE_COMMENTS_pn-pax-utils = ""
-RECIPE_LAST_UPDATE_pn-pax-utils = "Jun 16, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-pax-utils = "12/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pax-utils = "10 months"
+RECIPE_LAST_UPDATE_pn-pax-utils = "Jan 4, 2011"
 RECIPE_MAINTAINER_pn-pax-utils = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-sudo = "green"
@@ -864,11 +863,11 @@ RECIPE_MAINTAINER_pn-sudo = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_STATUS_pn-blktool = "green"
 RECIPE_DEPENDENCY_CHECK_pn-blktool = "not done"
 RECIPE_LATEST_VERSION_pn-blktool = "4-6"
+RECIPE_NO_OF_PATCHES_pn-blktool = "0"
 RECIPE_INTEL_SECTION_pn-blktool = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-blktool = "3 years"
 RECIPE_LATEST_RELEASE_DATE_pn-blktool = "02/2010"
-RECIPE_COMMENTS_pn-blktool = ""
-RECIPE_LAST_UPDATE_pn-blktool = "Jun 23, 2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-blktool = "3 years"
+RECIPE_LAST_UPDATE_pn-blktool = "Jan 4, 2011"
 RECIPE_MAINTAINER_pn-blktool = "Scott Garman <scott.a.garman@intel.com>"
 DISTRO_PN_ALIAS_pn-blktool = "Debian=blktool Mandriva=blktool"
 
@@ -953,15 +952,15 @@ RECIPE_MAINTAINER_pn-base-passwd = "Kevin Tian <kevin.tian@intel.com>"
 RECIPE_STATUS_pn-apmd = "green" 
 RECIPE_DEPENDENCY_CHECK_pn-apmd = "not done"
 RECIPE_LATEST_VERSION_pn-apmd = "3.2.2-14"
+RECIPE_NO_OF_PATCHES_pn-apmd = "3"
 RECIPE_PATCH_pn-apmd+debian = "in upstream"
-RECIPE_PATCH_pn-apmd+workaround = "unclear"
 RECIPE_PATCH_pn-apmd+unlinux = "added in 3.2.2; 9456cdc1; 2007; to prevent build from interfering with host kernel headers. curious whether it's still required or any better way?"
 RECIPE_PATCH_pn-apmd+libtool = "added in 3.2.2; 35de05e6; 2008; by RP; to solve compability with libtool 2.2.4. perhaps for upstream"
 RECIPE_INTEL_SECTION_pn-apmd = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-apmd = "1 year"
 RECIPE_LATEST_RELEASE_DATE_pn-apmd = "07/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-apmd = "1 year"
 RECIPE_COMMENTS_pn-apmd = ""
-RECIPE_LAST_UPDATE_pn-apmd = "Jul 13, 2010"
+RECIPE_LAST_UPDATE_pn-apmd = "Jan 4, 2011"
 RECIPE_MAINTAINER_pn-apmd = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-gperf = "green"
@@ -1178,10 +1177,14 @@ RECIPE_LATEST_VERSION_pn-libffi  = "3.0.9"
 RECIPE_LAST_UPDATE_pn-libffi = "Oct 15, 2010"
 RECIPE_MAINTAINER_pn-libffi  = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-libgdbus  = "red"
-RECIPE_LATEST_VERSION_pn-libgdbus  = "Release-0.2"
-RECIPE_LAST_UPDATE_pn-libgdbus = "Sep 22, 2008"
-RECIPE_MAINTAINER_pn-libgdbus  = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_STATUS_pn-libgdbus = "green"
+RECIPE_DEPENDENCY_CHECK_pn-libgdbus = "not done"
+RECIPE_LATEST_VERSION_pn-libgdbus = "0.2"
+RECIPE_NO_OF_PATCHES_pn-libgdbus = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-libgdbus = "09/2008"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libgdbus = "unknown"
+RECIPE_LAST_UPDATE_pn-libgdbus = "Jan 4, 2011"
+RECIPE_MAINTAINER_pn-libgdbus = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-apr = "red"
 RECIPE_LATEST_VERSION_pn-apr = "1.4.2"
-- 
1.7.1


