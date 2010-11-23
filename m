Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0FCAF4C811E8
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2010 02:07:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680165814"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2010 02:07:45 -0800
Message-Id: <0365274115a7e8020eac1a96725e900f82d557fa.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 17:31:24 +0800
To: poky@yoctoproject.org
Subject: [PATCH 23/25] gssdp:Add license checksum and update the GPL information
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:51 -0000

Add COPYING file checksum to bb file and update the "LGPL" to "LGPLv2" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb b/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
index 9d4c17e..2143984 100644
--- a/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
+++ b/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
@@ -1,6 +1,7 @@
 SUMMARY = "Resource discovery and announcement over SSDP"
 DESCRIPTION = "GSSDP implements resource discovery and announcement over SSDP (Simpe Service Discovery Protocol)."
-LICENSE = "LGPL"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 DEPENDS = "glib-2.0 libsoup-2.4 libglade"
 
 SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-- 
1.6.3.3


