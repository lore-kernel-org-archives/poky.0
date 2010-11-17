Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA6104C80FAC
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:46:46 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="627604023"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdai-0007lO-1F
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:08 +0800
Message-Id: <636187635942b70a5891f308157844ed1e18ebbe.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 13:55:14 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/9] dhcp: upgrade to version 4.2.0
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
X-List-Received-Date: Wed, 17 Nov 2010 08:46:47 -0000

from 4.1.1-P1

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../dhcp-3.0.3-dhclient-dbus.patch                 |    0
 .../fix-client-path.patch                          |    0
 .../fixincludes.patch                              |    0
 .../{dhcp-4.1.1-P1 => dhcp-4.2.0}/noattrmode.patch |    0
 .../dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/site.h      |    0
 .../dhcp/{dhcp_4.1.1-P1.bb => dhcp_4.2.0.bb}       |    2 +-
 6 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/dhcp-3.0.3-dhclient-dbus.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/fix-client-path.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/fixincludes.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/noattrmode.patch (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp-4.1.1-P1 => dhcp-4.2.0}/site.h (100%)
 rename meta/recipes-connectivity/dhcp/{dhcp_4.1.1-P1.bb => dhcp_4.2.0.bb} (94%)

diff --git a/meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/dhcp-3.0.3-dhclient-dbus.patch b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/dhcp-3.0.3-dhclient-dbus.patch
similarity index 100%
rename from meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/dhcp-3.0.3-dhclient-dbus.patch
rename to meta/recipes-connectivity/dhcp/dhcp-4.2.0/dhcp-3.0.3-dhclient-dbus.patch
diff --git a/meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/fix-client-path.patch b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-client-path.patch
similarity index 100%
rename from meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/fix-client-path.patch
rename to meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-client-path.patch
diff --git a/meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/fixincludes.patch b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/fixincludes.patch
similarity index 100%
rename from meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/fixincludes.patch
rename to meta/recipes-connectivity/dhcp/dhcp-4.2.0/fixincludes.patch
diff --git a/meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/noattrmode.patch b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/noattrmode.patch
similarity index 100%
rename from meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/noattrmode.patch
rename to meta/recipes-connectivity/dhcp/dhcp-4.2.0/noattrmode.patch
diff --git a/meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/site.h b/meta/recipes-connectivity/dhcp/dhcp-4.2.0/site.h
similarity index 100%
rename from meta/recipes-connectivity/dhcp/dhcp-4.1.1-P1/site.h
rename to meta/recipes-connectivity/dhcp/dhcp-4.2.0/site.h
diff --git a/meta/recipes-connectivity/dhcp/dhcp_4.1.1-P1.bb b/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
similarity index 94%
rename from meta/recipes-connectivity/dhcp/dhcp_4.1.1-P1.bb
rename to meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
index e9759de..3f770d9 100644
--- a/meta/recipes-connectivity/dhcp/dhcp_4.1.1-P1.bb
+++ b/meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb
@@ -1,6 +1,6 @@
 require dhcp4.inc
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI += "file://fixincludes.patch \
             file://dhcp-3.0.3-dhclient-dbus.patch;striplevel=0 \
-- 
1.7.0


