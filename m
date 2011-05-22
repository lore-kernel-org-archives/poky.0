Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A969A4C80A78
	for <poky@yoctoproject.org>; Sun, 22 May 2011 12:11:26 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 May 2011 10:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,252,1304319600"; 
   d="scan'208";a="5520674"
Received: from nbuild2.sc.intel.com ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 22 May 2011 10:11:26 -0700
From: nitin.a.kamble@intel.com
To: openembedded-core@lists.openembedded.org,
	poky@yoctoproject.org
Date: Sun, 22 May 2011 10:11:04 -0700
Message-Id: <36cc1c3eebac002c1acfbc20ef4c60b263ad1e9b.1306080531.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.5
In-Reply-To: <301e248311c215357e51464fb0b7e1155311fc7a.1306080531.git.nitin.a.kamble@intel.com>
References: <301e248311c215357e51464fb0b7e1155311fc7a.1306080531.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1306080531.git.nitin.a.kamble@intel.com>
References: <cover.1306080531.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/3] tcmode-default: switch to gcc 4.6.0 for ppc & mips also
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
X-List-Received-Date: Sun, 22 May 2011 17:11:26 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Now the kernel issues related to gcc 4.6.0 for mips & ppc are fixed.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/conf/distro/include/tcmode-default.inc |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/meta/conf/distro/include/tcmode-default.inc b/meta/conf/distro/include/tcmode-default.inc
index c2c9efe..d279231 100644
--- a/meta/conf/distro/include/tcmode-default.inc
+++ b/meta/conf/distro/include/tcmode-default.inc
@@ -18,10 +18,6 @@ PREFERRED_PROVIDER_virtual/gettext ??= "gettext"
 
 GCCVERSION ?= "4.6.0"
 SDKGCCVERSION ?= "4.6.0"
-GCCVERSION_mips ?= "4.5.1"
-SDKGCCVERSION_mips ?= "4.5.1"
-GCCVERSION_ppc ?= "4.5.1"
-SDKGCCVERSION_ppc ?= "4.5.1"
 BINUVERSION ?= "2.21"
 GLIBCVERSION ?= "2.10.1"
 EGLIBCVERSION ?= "2.13"
-- 
1.7.3.4


