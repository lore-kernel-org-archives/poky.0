Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D5FD04C8121A
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 06:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365818562"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 06:27:20 -0800
Message-Id: <2ea3e8084659e3769c7709f6490c1e67dcc6e287.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:33:56 -0800
Date: Thu, 23 Dec 2010  6:27:19 -0800
To: poky@yoctoproject.org
Subject: [PATCH 22/28] tzcode: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:21 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-extended/tzcode/tzcode-native_2009r.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/tzcode/tzcode-native_2009r.bb b/meta/recipes-extended/tzcode/tzcode-native_2009r.bb
index 7fe1326..dee8113 100644
--- a/meta/recipes-extended/tzcode/tzcode-native_2009r.bb
+++ b/meta/recipes-extended/tzcode/tzcode-native_2009r.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "tzcode, timezone zoneinfo utils -- zic, zdump, tzselect"
 LICENSE = "Public Domain"
 PR = "r0"
 
+LIC_FILES_CHKSUM = "file://${WORKDIR}/README;md5=3ae8198f82258417ce29066d3b034035"
+
 SRC_URI = "ftp://elsie.nci.nih.gov/pub/tzcode${PV}.tar.gz \
            ftp://elsie.nci.nih.gov/pub/tzdata2009s.tar.gz"
 
-- 
1.7.2.3


