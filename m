Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E13E01204
	for <poky@pokylinux.org>; Mon, 15 Aug 2011 23:41:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Aug 2011 23:41:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,378,1309762800"; d="scan'208";a="41832423"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2011 23:41:17 -0700
From: Jiajun Xu <jiajun.xu@intel.com>
To: poky@pokylinux.org
Date: Tue, 16 Aug 2011 14:59:59 +0800
Message-Id: <90c7a0495c570e70d0445468788efb16a4083824.1313477829.git.jiajun.xu@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1313477829.git.jiajun.xu@intel.com>
References: <cover.1313477829.git.jiajun.xu@intel.com>
Subject: [PATCH 1/1] poky.conf: add flag opengl into DISTRO_FEATURES
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
X-List-Received-Date: Tue, 16 Aug 2011 06:41:07 -0000

libsdl will check if opengl is set in DISTRO_FEATURES, then enable
openGL option during do_configure. It is required for 3D game testing.

Fix [YOCTO #883]

Signed-off-by: Jiajun Xu <jiajun.xu@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 88b8adf..c65cbc4 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -10,7 +10,7 @@ TARGET_VENDOR = "-poky"
 
 LOCALCONF_VERSION = "1"
 
-DISTRO_FEATURES_append = " largefile"
+DISTRO_FEATURES_append = " largefile opengl"
 
 PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
 
-- 
1.7.1


