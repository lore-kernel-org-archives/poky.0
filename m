Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D82944C811F4
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2010 02:07:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="576651186"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 23 Nov 2010 02:07:23 -0800
Message-Id: <f044481ecfcffddc82a068f1afd86dfa34e86fba.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 13/25] dpkg:Add license file checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:25 -0000

Add COPYING checksum to bb file

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb b/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
index c8069fe..43ab8f6 100644
--- a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
+++ b/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
@@ -1,4 +1,5 @@
 require dpkg.inc
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 
 SRC_URI += "file://noman.patch;patch=1 \
             file://check_snprintf.patch \
-- 
1.6.3.3


