Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E23224C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:30:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Feb 2011 21:30:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,478,1291622400"; d="scan'208";a="658138637"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2011 21:30:37 -0800
Message-Id: <cc86adb2fed6ce8746866cced23ea76a88d56bf5.1297834031.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297834031.git.lianhao.lu@intel.com>
References: <cover.1297834031.git.lianhao.lu@intel.com>
Old-Date: Tue, 15 Feb 2011 19:13:19 +0800
Date: Wed, 16 Feb 2011 13:30:16 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] linux-libc-headers-yocto: Added RPROVIDES.
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
X-List-Received-Date: Wed, 16 Feb 2011 05:30:38 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[BUGID #714] Added RPROVIDES_${PN}-dev and RPROVIDES_${PN}-dbg for
linux-libc-headers-yocto to provides "linux-libc-headers-dev" and
"linux-libc-headers-dbg" respectively.

This resolved the dependency issue of libc6-dev depending upon
linux-libc-headers-dev. Package linux-libc-headers-yocto-dev will be
installed as linux-libc-headers-dev.

Also bumped the PR.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 .../linux-libc-headers-yocto_git.bb                |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 736d60f..6d56f6e 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -6,8 +6,10 @@ B = "${S}"
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "unifdef-native"
 PROVIDES = "linux-libc-headers"
+RPROVIDES_${PN}-dev = "linux-libc-headers-dev"
+RPROVIDES_${PN}-dbg = "linux-libc-headers-dbg"
 PV = "2.6.37+git-${SRCPV}"
-PR = "r2"
+PR = "r3"
 
 SRCREV_FORMAT = "meta_machine"
 SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
-- 
1.7.0.4


