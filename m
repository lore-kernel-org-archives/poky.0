Return-Path: <cristiana.voicu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D26E008C3
	for <poky@yoctoproject.org>; Mon, 24 Feb 2014 23:13:13 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Feb 2014 23:13:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,538,1389772800"; d="scan'208";a="487586215"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.62])
	by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2014 23:13:12 -0800
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 25 Feb 2014 09:21:09 +0200
Message-Id: <1393312869-812-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] meta-hob: remove hob-toolchain since this is not needed anymore
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Feb 2014 07:13:16 -0000

A patch to replace the use of hob-toolchain with bitbake api
was sent to bitbake-devel list and it is needed for this one.

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-hob/recipes-core/meta/hob-toolchain.bb |    9 ---------
 1 file changed, 9 deletions(-)
 delete mode 100644 meta-hob/recipes-core/meta/hob-toolchain.bb

diff --git a/meta-hob/recipes-core/meta/hob-toolchain.bb b/meta-hob/recipes-core/meta/hob-toolchain.bb
deleted file mode 100644
index 5565273..0000000
--- a/meta-hob/recipes-core/meta/hob-toolchain.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-SUMMARY = "dummy toolchain"
-LICENSE = "MIT"
-
-PR = "r0"
-
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
-                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-
-inherit populate_sdk
-- 
1.7.9.5


