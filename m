Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id C63AA4C8110C
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 12:56:47 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 37D68302BA
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 13:56:41 -0500 (EST)
Message-Id: <7132b636ec4ec379be8d4e9b47136a64691988c4.1290624288.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290624288.git.scott.a.garman@intel.com>
References: <cover.1290624288.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Wed, 24 Nov 2010 10:42:23 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 37D68302BA.4E70B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/4] distro_tracking_fields.inc: update sudo, libpam, and mtools
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
X-List-Received-Date: Wed, 24 Nov 2010 18:56:48 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   31 +++++++++++---------
 1 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 63bb126..5eadadd 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -153,13 +153,12 @@ RECIPE_MAINTAINER_pn-glib-2.0 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_STATUS_pn-libpam = "green"
 DISTRO_PN_ALIAS_pn-libpam = "Meego=pam Fedora=pam OpenSuSE=pam Ubuntu=pam Mandriva=pam Debian=pam"
 DEPENDENCY_CHECK_pn-libpam = "not done"
-RECIPE_LATEST_VERSION_pn-libpam = "1.1.1"
-RECIPE_PATCH_pn-libpam+disable_crossbinary = "added by RP; 2008; padout requires native compilation and not used in the target. so disable it. local patch"
+RECIPE_LATEST_VERSION_pn-libpam = "1.1.3"
 RECIPE_INTEL_SECTION_pn-libpam = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libpam = "6 months"
-RECIPE_LATEST_RELEASE_DATE_pn-libpam = "12/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libpam = "2 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libpam = "2010/10/28"
 RECIPE_COMMENTS_pn-libpam = ""
-RECIPE_MAINTAINER_pn-libpam = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-libpam = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-libgpg-error = "yellow" # specific .pc handle
 DEPENDENCY_CHECK_pn-libgpg-error = "not done"
@@ -776,14 +775,12 @@ RECIPE_MAINTAINER_pn-pax-utils = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-sudo = "green"
 DEPENDENCY_CHECK_pn-sudo = "not done"
-RECIPE_LATEST_VERSION_pn-sudo = "1.7.2p7"
-RECIPE_PATCH_pn-sudo+autofoo = "to be pushed upstream"
-RECIPE_PATCH_pn-sudo+noexec-link = "to be pushed upstream"
+RECIPE_LATEST_VERSION_pn-sudo = "1.7.4p4"
 RECIPE_INTEL_SECTION_pn-sudo = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sudo = "1 months"
-RECIPE_LATEST_RELEASE_DATE_pn-sudo = "06/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sudo = "1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-sudo = "2010/09/07"
 RECIPE_COMMENTS_pn-sudo = ""
-RECIPE_MAINTAINER_pn-sudo = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-sudo = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-blktool = "green"
 DEPENDENCY_CHECK_pn-blktool = "not done"
@@ -1189,9 +1186,15 @@ RECIPE_COMMENTS_pn-msynctool = ""
 RECIPE_MAINTAINER_pn-msynctool = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-msynctool = "OpenSuse=msynctool Mandriva=msynctool"
 
-RECIPE_STATUS_pn-mtools = "red"
-RECIPE_LATEST_VERSION_pn-mtools = "4.0.13"
-RECIPE_MAINTAINER_pn-mtools = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_STATUS_pn-mtools = "green"
+DEPENDENCY_CHECK_pn-mtools = "not done"
+RECIPE_LATEST_VERSION_pn-mtools = "4.0.15"
+RECIPE_INTEL_SECTION_pn-mtools = "optional"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mtools = "1 day"
+RECIPE_LATEST_RELEASE_DATE_pn-mtools = "2010/10/17"
+RECIPE_COMMENTS_pn-mtools = ""
+RECIPE_LATEST_VERSION_pn-mtools = "4.0.15"
+RECIPE_MAINTAINER_pn-mtools = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-pm-utils = "green"
 DEPENDENCY_CHECK_pn-pm-utils = "not done"
-- 
1.7.1


