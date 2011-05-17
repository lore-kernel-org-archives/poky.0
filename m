Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B3724C80AA2
	for <poky@yoctoproject.org>; Tue, 17 May 2011 13:07:55 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 May 2011 11:07:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,226,1304319600"; 
   d="scan'208";a="3467554"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 17 May 2011 11:07:55 -0700
Message-Id: <c9c5771014b19aff40c03a378a352a4415b7c465.1305655392.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305655392.git.nitin.a.kamble@intel.com>
References: <cover.1305655392.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 17 May 2011 11:00:06 -0700
Date: Tue, 17 May 2011 11:07:55 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] tcmode-default: switch to gcc 4.6.0 for x86, x86-64 & arm
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
X-List-Received-Date: Tue, 17 May 2011 18:07:55 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

mips & ppc are not ready yet. Waiting for kernel issues to be fixed.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/conf/distro/include/tcmode-default.inc |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/tcmode-default.inc b/meta/conf/distro/include/tcmode-default.inc
index 584da9b..ae6f272 100644
--- a/meta/conf/distro/include/tcmode-default.inc
+++ b/meta/conf/distro/include/tcmode-default.inc
@@ -16,8 +16,12 @@ PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-initial = "${TCLIBC}-initial"
 PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-initial-nativesdk = "${TCLIBC}-initial-nativesdk"
 PREFERRED_PROVIDER_virtual/gettext ??= "gettext"
 
-GCCVERSION ?= "4.5.1"
-SDKGCCVERSION ?= "4.5.1"
+GCCVERSION ?= "4.6.0"
+SDKGCCVERSION ?= "4.6.0"
+GCCVERSION_mips ?= "4.5.1"
+SDKGCCVERSION_mips ?= "4.5.1"
+GCCVERSION_ppc ?= "4.5.1"
+SDKGCCVERSION_ppc ?= "4.5.1"
 BINUVERSION ?= "2.21"
 GLIBCVERSION ?= "2.10.1"
 EGLIBCVERSION ?= "2.12"
-- 
1.7.3.4


