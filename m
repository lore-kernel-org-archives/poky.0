Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 768CB4C81174
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 10:33:08 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0B03D2FE9F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:33:02 -0500 (EST)
Message-Id: <6bc5bb41ae1615f57e469e6f8128aee2b28742bd.1295886689.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295886689.git.scott.a.garman@intel.com>
References: <cover.1295886689.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Sun, 23 Jan 2011 18:49:32 -0800
Date: Mon, 24 Jan 2011  8:32:58 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0B03D2FE9F.32EDF
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/2] distro_tracking_fields: Updated sudo tracking data
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
X-List-Received-Date: Mon, 24 Jan 2011 16:33:08 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index d3d6126..840dcfd 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -782,12 +782,12 @@ RECIPE_MAINTAINER_pn-pax-utils = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-sudo = "green"
 RECIPE_DEPENDENCY_CHECK_pn-sudo = "not done"
-RECIPE_LATEST_VERSION_pn-sudo = "1.7.4p4"
+RECIPE_LATEST_VERSION_pn-sudo = "1.7.4p6"
 RECIPE_INTEL_SECTION_pn-sudo = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sudo = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-sudo = "2010/09/07"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sudo = "1 week"
+RECIPE_LATEST_RELEASE_DATE_pn-sudo = "2011/01/19"
 RECIPE_COMMENTS_pn-sudo = ""
-RECIPE_LAST_UPDATE_pn-sudo = "Nov 22, 2010"
+RECIPE_LAST_UPDATE_pn-sudo = "Jan 23, 2011"
 RECIPE_MAINTAINER_pn-sudo = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-blktool = "green"
-- 
1.7.1


