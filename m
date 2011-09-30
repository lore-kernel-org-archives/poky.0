Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B911E011BA
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 08:57:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Sep 2011 08:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,468,1312182000"; d="scan'208";a="69088867"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.157])
	by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2011 08:57:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2011 16:57:10 +0100
Message-Id: <52adc3df00dbbe08b6b7813f56f0f2559daefe06.1317398102.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1317398102.git.paul.eggleton@linux.intel.com>
References: <cover.1317398102.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1317398102.git.paul.eggleton@linux.intel.com>
References: <cover.1317398102.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] beagleboard-audio: fix RDEPENDS on alsa-utils-amixer
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
X-List-Received-Date: Fri, 30 Sep 2011 15:57:18 -0000

Use RDEPENDS_${PN} instead of RDEPENDS.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../beagleboard-audio/beagleboard-audio.bb         |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
index ee85715..0bfd7dc 100644
--- a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
+++ b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
@@ -4,11 +4,11 @@ SECTION = "base"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
 
-PR = "r4"
+PR = "r5"
 
 inherit update-rc.d
 
-RDEPENDS = "alsa-utils-amixer"
+RDEPENDS_${PN} = "alsa-utils-amixer"
 
 SRC_URI = "file://beagleboard-audio"
 
-- 
1.7.4.1


