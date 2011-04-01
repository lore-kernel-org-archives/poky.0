Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 770684C80FE0
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 08:40:13 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Apr 2011 06:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,282,1299484800"; d="scan'208";a="904494561"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2011 06:40:12 -0700
Message-Id: <c6ec0945a01ec69b94225bef73b4b17b46fce836.1301664697.git.josh@linux.intel.com>
In-Reply-To: <cover.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
Old-Date: Thu, 31 Mar 2011 01:04:06 +0100
Date: Fri, 01 Apr 2011 14:40:08 +0100
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 2/7] python-native: add missing SRC_URI hashes
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
X-List-Received-Date: Fri, 01 Apr 2011 13:40:13 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../recipes-devtools/python/python-native_2.6.6.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/python/python-native_2.6.6.bb b/meta/recipes-devtools/python/python-native_2.6.6.bb
index 2ad10c9..11956a4 100644
--- a/meta/recipes-devtools/python/python-native_2.6.6.bb
+++ b/meta/recipes-devtools/python/python-native_2.6.6.bb
@@ -14,6 +14,9 @@ SRC_URI = "http://www.python.org/ftp/python/${PV}/Python-${PV}.tar.bz2 \
            file://nohostlibs.patch"
 S = "${WORKDIR}/Python-${PV}"
 
+SRC_URI[md5sum] = "cf4e6881bb84a7ce6089e4a307f71f14"
+SRC_URI[sha256sum] = "134c5e0736bae2e5570d0b915693374f11108ded63c35a23a35d282737d2ce83"
+
 inherit native
 
 EXTRA_OEMAKE = '\
-- 
1.7.4.1


