Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7012F4C80FAD
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Nov 2010 06:17:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="353208661"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 06:17:38 -0800
Message-Id: <6a00413dbf1684b4d8e72db2a8086824a66f1374.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 19:51:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/8] iputils: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:39 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-extended/iputils/iputils_s20100418.bb |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/iputils/iputils_s20100418.bb b/meta/recipes-extended/iputils/iputils_s20100418.bb
index 3f793ec..bdb5265 100644
--- a/meta/recipes-extended/iputils/iputils_s20100418.bb
+++ b/meta/recipes-extended/iputils/iputils_s20100418.bb
@@ -5,6 +5,11 @@ SECTION = "console/network"
 
 LICENSE = "BSD & GPLv2+"
 
+LIC_FILES_CHKSUM = "file://ping.c;beginline=1;endline=35;md5=f9ceb201733e9a6cf8f00766dd278d82 \
+                    file://tracepath.c;beginline=1;endline=10;md5=0ecea2bf60bff2f3d840096d87647f3d \
+                    file://arping.c;beginline=1;endline=10;md5=ada2a6d06acc90f943bddf40d15e0541 \
+                    file://tftpd.c;beginline=1;endline=32;md5=28834bf8a91a5b8a92755dbee709ef96 "
+
 DEPENDS = "sysfsutils openssl"
 
 PR = "r0"
-- 
1.7.0.4


