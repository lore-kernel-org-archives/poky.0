Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61C274C80AB0
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 17:36:07 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Mar 2011 15:36:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,201,1299484800"; d="scan'208";a="404365916"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 17 Mar 2011 15:35:55 -0700
Message-Id: <84cd116632029de2cd7c4ab886081b85c0739005.1300401018.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300401016.git.nitin.a.kamble@intel.com>
References: <cover.1300401016.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Mar 2011 13:53:36 -0700
Date: Thu, 17 Mar 2011 15:35:55 -0700
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 4/7] poky.conf: add additional Libraries to the LGPLv2 Whitelist
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
X-List-Received-Date: Thu, 17 Mar 2011 22:36:07 -0000

From: Saul Wold <sgw@linux.intel.com>

The ligcc and gcc-runtime both are LGPLv2 libraries although they
are part of the large GCC GPLv3 code. There is clearly called out
exceptions for these libraries.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index 71e40de..eee12b7 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -131,7 +131,7 @@ EXTRAOPKGCONFIG = "poky-feed-config-opkg"
 # directly part of the distribution. 
 HOSTTOOLS_WHITELIST_GPLv3 ?= ""
 WHITELIST_GPLv3 ?= "less gnome-common"
-LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn" 
+LGPLv2_WHITELIST_GPLv3 ?= "libassuan gnutls libtasn1 libidn libgcc gcc-runtime" 
 
 # This is a list of packages that require a commercial license to ship
 # product. If shipped as part of an image these packages may have 
-- 
1.7.3.4


