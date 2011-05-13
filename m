Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 027C44C810D2
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:30 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 17:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="435293388"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 17:20:30 -0700
Message-Id: <852ac95784ce509ab51cfc9938ad0f1a7c2bb89d.1305245923.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 17:15:48 -0700
Date: Thu, 12 May 2011 17:20:29 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 02/25] tcmode-default: fix a typo
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
X-List-Received-Date: Fri, 13 May 2011 00:20:31 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/conf/distro/include/tcmode-default.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/tcmode-default.inc b/meta/conf/distro/include/tcmode-default.inc
index 5dd136e..666e61f 100644
--- a/meta/conf/distro/include/tcmode-default.inc
+++ b/meta/conf/distro/include/tcmode-default.inc
@@ -35,7 +35,7 @@ PREFERRED_VERSION_gcc-cross-canadian ?= "${GCCVERSION}"
 PREFERRED_VERSION_gcc-runtime ?= "${GCCVERSION}"
 PREFERRED_VERSION_gcc-runtime-nativesdk ?= "${SDKGCCVERSION}"
 PREFERRED_VERSION_libgcc ?= "${GCCVERSION}"
-PREFERRED_VERSION_libgcc-nativesdk ?= "${SDKGCCVERSION}
+PREFERRED_VERSION_libgcc-nativesdk ?= "${SDKGCCVERSION}"
 PREFERRED_VERSION_binutils ?= "${BINUVERSION}"
 PREFERRED_VERSION_binutils-cross ?= "${BINUVERSION}"
 PREFERRED_VERSION_binutils-crosssdk ?= "${BINUVERSION}"
-- 
1.7.3.4


