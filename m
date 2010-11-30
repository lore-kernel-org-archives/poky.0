Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id A08A24C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 15:55:53 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A99E130504
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 16:55:42 -0500 (EST)
Message-Id: <8bdbe88bc6f47bee20cd48731a37c7041372c49e.1291326732.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1291326732.git.scott.a.garman@intel.com>
References: <cover.1291326732.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 29 Nov 2010 21:04:24 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A99E130504.A151B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/3] distro_tracking_fields.inc: update insserv and libatomics-ops
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
X-List-Received-Date: Thu, 02 Dec 2010 21:55:53 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   19 ++++++++++++++-----
 1 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 18e9996..da5ecc0 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1068,10 +1068,15 @@ RECIPE_LATEST_RELEASE_DATE_pn-watchdog = "06/2010"
 RECIPE_COMMENTS_pn-watchdog = ""
 DISTRO_PN_ALIAS_pn-watchdog = "Debian=watchdog Ubuntu=watchdog Mandriva=watchdog"
 
-RECIPE_STATUS_pn-libatomics-ops = "red"
+RECIPE_STATUS_pn-libatomics-ops = "green"
+DEPENDENCY_CHECK_pn-libatomics-ops = "not done"
+RECIPE_LATEST_VERSION_pn-libatomics-ops = "1.2"
+RECIPE_NO_OF_PATCHES_pn-libatomics-ops = "3"
+RECIPE_INTEL_SECTION_pn-libatomics-ops = "optional"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libatomics-ops = "unknown"
+RECIPE_LATEST_RELEASE_DATE_pn-libatomics-ops = "unknown"
 DISTRO_PN_ALIAS_pn-libatomics-ops = "Meego=libatomic-ops Debian=libatomic-ops Ubuntu=libatomic-ops OpenSuSE=libatomic-ops Mandriva=libatomic-ops"
-RECIPE_LATEST_VERSION_pn-libatomics-ops = "7.2alpha4"
-RECIPE_MAINTAINER_pn-libatomics-ops = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-libatomics-ops = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-libffi  = "red"
 RECIPE_LATEST_VERSION_pn-libffi  = "3.0.9"
@@ -1113,9 +1118,13 @@ RECIPE_LATEST_RELEASE_DATE_pn-gssdp="2010/11/12"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gssdp="2 month"
 RECIPE_MAINTAINER_pn-gssdp = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-insserv = "red"
+RECIPE_STATUS_pn-insserv = "green"
+DEPENDENCY_CHECK_pn-insserv = "not done"
 RECIPE_LATEST_VERSION_pn-insserv = "1.14.0"
-RECIPE_MAINTAINER_pn-insserv = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_INTEL_SECTION_pn-insserv = "base"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-insserv = "unknown"
+RECIPE_LATEST_RELEASE_DATE_pn-insserv = "unknown"
+RECIPE_MAINTAINER_pn-insserv = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-modutils-collateral = "red"
 RECIPE_LATEST_VERSION_pn-modutils-collateral = "1.0"
-- 
1.7.1


