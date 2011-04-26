Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DC014C80A46
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 13:27:19 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 8CA58308DC
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 14:27:14 -0400 (EDT)
Message-Id: <408880fc9d7c3592abf6f76d409d824859599550.1303842200.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1303842200.git.scott.a.garman@intel.com>
References: <cover.1303842200.git.scott.a.garman@intel.com>
Old-Date: Mon, 25 Apr 2011 13:00:29 -0700
Date: Tue, 26 Apr 2011 11:27:12 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 8CA58308DC.1DB23
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/2] distro_tracking_fields.inc: add cdrtools recipe
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
X-List-Received-Date: Tue, 26 Apr 2011 18:27:19 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index e7201b0..d491d97 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -5672,3 +5672,14 @@ RECIPE_STATUS_pn-createrepo = "green"
 RECIPE_LATEST_VERSION_pn-createrepo = "2.2.3"
 RECIPE_MAINTAINER_pn-createrepo = "Qing He <qing.he@intel.com>"
 RECIPE_LAST_UPDATE_pn-createrepo = "Apr 6, 2011"
+
+RECIPE_STATUS_pn-cdrtools = "green"
+RECIPE_DEPENDENCY_CHECK_pn-cdrtools = "not done"
+RECIPE_LATEST_VERSION_pn-cdrtools = "3.00"
+RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
+RECIPE_NO_OF_PATCHES_pn-cdrtools = "2"
+RECIPE_LATEST_RELEASE_DATE_pn-cdrtools = "2010/06/02"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cdrtools = "6 years 2 months"
+RECIPE_COMMENTS_pn-cdrtools = "This is the last GPL licensed version of cdrtools"
+RECIPE_LAST_UPDATE_pn-cdrtools = "Apr 25, 2011"
+RECIPE_MAINTAINER_pn-cdrtools = "Scott Garman <scott.a.garman@intel.com>"
-- 
1.7.1


