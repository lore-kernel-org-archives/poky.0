Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9C7B4C8121F
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 06:27:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690189180"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 06:27:21 -0800
Message-Id: <50a44fae5bb225b8c6f9cddc2ea035a0db0b61ca.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:34:26 -0800
Date: Thu, 23 Dec 2010  6:27:20 -0800
To: poky@yoctoproject.org
Subject: [PATCH 23/28] bootst-jam: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:22 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-support/boost/boost-jam-native.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/boost/boost-jam-native.inc b/meta/recipes-support/boost/boost-jam-native.inc
index fe181ad..f0fac09 100644
--- a/meta/recipes-support/boost/boost-jam-native.inc
+++ b/meta/recipes-support/boost/boost-jam-native.inc
@@ -10,6 +10,8 @@ PRIORITY = "optional"
 LICENSE = "Boost Software License"
 PR = "r0"
 
+LIC_FILES_CHKSUM = "file://LICENSE_1_0.txt;md5=e4224ccaecb14d942c71d31bef20d78c"
+
 SRC_URI = "${SOURCEFORGE_MIRROR}/boost/boost-jam-${PV}.tgz"
 S = "${WORKDIR}/boost-jam-${PV}"
 
-- 
1.7.2.3


