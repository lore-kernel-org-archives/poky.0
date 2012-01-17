Return-Path: <shane.wang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28ED4E0030C
	for <poky@pokylinux.org>; Tue, 17 Jan 2012 00:07:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jan 2012 00:06:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="96625316"
Received: from yocto-build5.sh.intel.com (HELO localhost) ([10.239.48.2])
	by azsmga001.ch.intel.com with ESMTP; 17 Jan 2012 00:06:58 -0800
From: Shane Wang <shane.wang@intel.com>
To: poky@pokylinux.org,
	paul.eggleton@linux.intel.com
Date: Tue, 17 Jan 2012 16:15:05 +0800
Message-Id: <8fd2d6d9d3a4e9f5cad863350824dd8970f825c9.1326787792.git.shane.wang@intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1326787792.git.shane.wang@intel.com>
References: <cover.1326787792.git.shane.wang@intel.com>
In-Reply-To: <cover.1326787792.git.shane.wang@intel.com>
References: <cover.1326787792.git.shane.wang@intel.com>
Subject: [PATCH 1/1] meta-baryon: correct the SRC_URI for libgsm
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
X-List-Received-Date: Tue, 17 Jan 2012 08:07:00 -0000

This patch is to correct the SRC_URI for libgsm

[YOCTO #1878] got fixed.

Signed-off-by: Shane Wang <shane.wang@intel.com>
---
 recipes-multimedia/libgsm/libgsm_1.0.12.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/recipes-multimedia/libgsm/libgsm_1.0.12.bb b/recipes-multimedia/libgsm/libgsm_1.0.12.bb
index 23a59f0..4ee8bd4 100644
--- a/recipes-multimedia/libgsm/libgsm_1.0.12.bb
+++ b/recipes-multimedia/libgsm/libgsm_1.0.12.bb
@@ -9,7 +9,7 @@ PR = "r3"
 
 # dvhart - bad URL, trying a new one - note: 1.0.13 exists
 #SRC_URI = "http://user.cs.tu-berlin.de/~jutta/gsm/gsm-${PV}.tar.gz
-SRC_URI = " http://www.imagemagick.org/download/delegates/ffmpeg/gsm-1.0.12.tar.gz \
+SRC_URI = "http://www.quut.com/gsm/gsm-${PV}.tar.gz \
 	   file://01_makefile.patch \
            file://02_cplusplus.patch \
            file://03_config.patch \
-- 
1.7.6


