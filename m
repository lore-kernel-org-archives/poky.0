Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58E994C811CC
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 03:02:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="860917187"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 03:02:48 -0800
Message-Id: <20fbe9f33b94ddb2f478a5ad823cb008ed38ae0e.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 14:29:20 +0800
To: poky@yoctoproject.org
Subject: [PATCH 05/20] modutils:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:49 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-kernel/modutils/modutils_2.4.27.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/modutils/modutils_2.4.27.bb b/meta/recipes-kernel/modutils/modutils_2.4.27.bb
index a5a9231..497d1f1 100644
--- a/meta/recipes-kernel/modutils/modutils_2.4.27.bb
+++ b/meta/recipes-kernel/modutils/modutils_2.4.27.bb
@@ -2,6 +2,7 @@ SECTION = "base"
 DESCRIPTION = "These utilities are intended to make a Linux modular kernel \
 manageable for all users, administrators and distribution maintainers."
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 DEPENDS = "bison-native"
 PR = "r9"
 
-- 
1.6.3.3


