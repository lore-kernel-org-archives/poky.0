Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C23F4C80B70
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:48 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Nov 2010 03:02:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352684315"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 03:02:47 -0800
Message-Id: <56fa05a6d520f635e3663da2e9c8b7ec3885fdbb.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 14:27:05 +0800
To: poky@yoctoproject.org
Subject: [PATCH 04/20] libpam:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:48 -0000

Add COPYING file and copyright information in pam_loginuid.c checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-extended/pam/libpam_1.1.1.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/pam/libpam_1.1.1.bb b/meta/recipes-extended/pam/libpam_1.1.1.bb
index 536a0f5..e6cd172 100644
--- a/meta/recipes-extended/pam/libpam_1.1.1.bb
+++ b/meta/recipes-extended/pam/libpam_1.1.1.bb
@@ -5,6 +5,8 @@ BUGTRACKER = "http://sourceforge.net/projects/pam/support"
 # /etc/pam.d comes from Debian libpam-runtime in 2009-11 (at that time 
 # libpam-runtime-1.0.1 is GPLv2+), by openembedded
 LICENSE = "GPLv2+ | BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ca0395de9a86191a078b8b79302e3083 \
+		    file://modules/pam_loginuid/pam_loginuid.c;endline=23;md5=db84479f04f9afb6dd4dd022a0143997"
 PR = "r1"
 
 DEPENDS = "bison flex"
-- 
1.6.3.3


