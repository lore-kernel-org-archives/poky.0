Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A04FF4C81065
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2010 02:07:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="576651243"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 23 Nov 2010 02:07:36 -0800
Message-Id: <3d0cf659fb8df379e2b4655bc0f993901a7aa263.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 16:39:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 19/25] beecrypt:Add license checksum and update the GPL to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:37 -0000

Add COPYING and COPYING.LIB checksum to bb file,add the "LGPLv2.1" according to COPYING.LIB

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/beecrypt/beecrypt_4.1.2.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb b/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
index dfcc6ba..0da36d9 100644
--- a/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
+++ b/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
@@ -8,7 +8,9 @@ SRC_URI="${SOURCEFORGE_MIRROR}/beecrypt/beecrypt-${PV}.tar.gz \
 	 file://x64fix.patch \
 	 file://disable-icu-check.patch \
 	 file://fix-security.patch"
-LICENSE = "GPLv2"
+LICENSE = "GPLv2&LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=9894370afd5dfe7d02b8d14319e729a1 \
+	            file://COPYING.LIB;md5=dcf3c825659e82539645da41a7908589"
 DEPENDS = "icu"
 
 PR = "r0"
-- 
1.6.3.3


