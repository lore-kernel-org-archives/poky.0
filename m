Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B74C44C8110C
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:28 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 02:50:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="680966917"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 02:50:27 -0800
Message-Id: <e3c4f8a46dac87c15f7817829cae6cfe46c33d94.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 12:25:24 +0800
To: poky@yoctoproject.org
Subject: [PATCH 03/20] prelink:Add license checksum to bb file
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:28 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/prelink/prelink_git.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/prelink/prelink_git.bb b/meta/recipes-devtools/prelink/prelink_git.bb
index 06078ed..6df19f9 100644
--- a/meta/recipes-devtools/prelink/prelink_git.bb
+++ b/meta/recipes-devtools/prelink/prelink_git.bb
@@ -5,6 +5,7 @@ DESCRIPTION = " The prelink package contains a utility which modifies ELF shared
 and executables, so that far fewer relocations need to be resolved at \
 runtime and thus programs come up faster."
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 PV = "1.0+git${SRCPV}"
 PR = "r0"
 
-- 
1.6.3.3


