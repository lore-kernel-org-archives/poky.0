Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81F374C80AB7
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 17:35:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Mar 2011 15:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,201,1299484800"; d="scan'208";a="668480655"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2011 15:35:55 -0700
Message-Id: <a944030652dd72afa8ee2321083c6f80aa2de233.1300401018.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300401016.git.nitin.a.kamble@intel.com>
References: <cover.1300401016.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 17 Mar 2011 01:12:19 -0700
Date: Thu, 17 Mar 2011 15:35:55 -0700
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 5/7] poky.conf: remove gnome-common from WHITELIST_GPLV3
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
X-List-Received-Date: Thu, 17 Mar 2011 22:35:56 -0000

From: Saul Wold <sgw@linux.intel.com>

This was due to task-poky-extended pulling in qemu-config for
non-GPLv3 poky-image-basic

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index eee12b7..76620f9 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -130,7 +130,7 @@ EXTRAOPKGCONFIG = "poky-feed-config-opkg"
 # This is a list of packages that are used by poky to build the distribution, they are not
 # directly part of the distribution. 
 HOSTTOOLS_WHITELIST_GPLv3 ?= ""
-WHITELIST_GPLv3 ?= "less gnome-common"
+WHITELIST_GPLv3 ?= "less"
 LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc gcc-runtime" 
 
 # This is a list of packages that require a commercial license to ship
-- 
1.7.3.4


