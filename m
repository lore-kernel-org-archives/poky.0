Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E4FC4C811FC
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:03:08 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2010 03:03:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352684455"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 03:03:07 -0800
Message-Id: <7ef481cf6ce3d526511288800f29a16bbb98e2a8.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 18:35:55 +0800
To: poky@yoctoproject.org
Subject: [PATCH 18/20] libpcre:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:03:08 -0000

Add LICENSE file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/libpcre/libpcre_8.10.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/libpcre/libpcre_8.10.bb b/meta/recipes-support/libpcre/libpcre_8.10.bb
index 840d74a..4053e45 100644
--- a/meta/recipes-support/libpcre/libpcre_8.10.bb
+++ b/meta/recipes-support/libpcre/libpcre_8.10.bb
@@ -7,6 +7,7 @@ the POSIX-style functions is called pcreposix.h."
 SECTION = "devel"
 PR = "r4"
 LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENCE;md5=77f9b14fe707d0376d89bc162e6c54ff"
 SRC_URI = "${SOURCEFORGE_MIRROR}/pcre/pcre-${PV}.tar.bz2 \
            file://pcre-cross.patch;patch=1"
 S = "${WORKDIR}/pcre-${PV}"
-- 
1.6.3.3


