Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C604E4C80AAF
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:24:16 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 09:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="898712921"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 09:24:16 -0700
Message-Id: <d551d658a7848658f5b664c08fb0a0840369d1bc.1300465259.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300465259.git.nitin.a.kamble@intel.com>
References: <cover.1300465259.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Mar 2011 13:53:36 -0700
Date: Fri, 18 Mar 2011  9:24:16 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 3/7] poky.conf: add additional Libraries to the LGPLv2 Whitelist
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
X-List-Received-Date: Fri, 18 Mar 2011 16:24:16 -0000

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


