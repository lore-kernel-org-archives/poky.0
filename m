Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B55A4C80A85
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 01:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="640551595"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 01:56:09 -0700
Message-Id: <61e0f2b6a21bdc594346864f9ca0c850d9812c5c.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 14:05:43 +0800
Date: Tue, 10 May 2011 17:01:38 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 12/39] wpa-supplicant: add upstream status for wpa-supplicant
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
X-List-Received-Date: Tue, 10 May 2011 08:56:10 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../wpa_supplicant-0.5.7-always-scan.patch         |    2 ++
 ...a_supplicant-fix-deprecated-dbus-function.patch |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-0.5.7-always-scan.patch b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-0.5.7-always-scan.patch
index 25afd07..5485d55 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-0.5.7-always-scan.patch
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-0.5.7-always-scan.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 diff -up wpa_supplicant-0.5.7/wpa_supplicant.c.always-scan wpa_supplicant-0.5.7/wpa_supplicant.c
 --- wpa_supplicant-0.5.7/wpa_supplicant.c.always-scan	2007-09-25 15:51:35.000000000 -0400
 +++ wpa_supplicant-0.5.7/wpa_supplicant.c	2007-09-25 16:31:27.000000000 -0400
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-fix-deprecated-dbus-function.patch b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-fix-deprecated-dbus-function.patch
index dbd5e4e..a1898c3 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-fix-deprecated-dbus-function.patch
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-fix-deprecated-dbus-function.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- dbus_dict_helpers.c.array-fix	2006-12-18 12:31:11.000000000 -0500
 +++ dbus_dict_helpers.c	2006-12-20 03:17:08.000000000 -0500
 @@ -629,36 +629,55 @@ dbus_bool_t wpa_dbus_dict_open_read(DBus
-- 
1.7.1


