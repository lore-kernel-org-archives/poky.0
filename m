Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41EBA4C810AE
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 05:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="354053957"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 05:06:13 -0800
Message-Id: <9a82166dd66a2fadfde848dbecae51184327d6df.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 28 Nov 2010 11:49:51 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/11] xf86-video-omapfb: upgrade to latest commit
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:14 -0000

xf86-video-omapfb has no major version upgrade since the last 24 monthes, so simply upgrade to the latest commit of Nov 2010.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index bcf7164..009481c 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -164,7 +164,7 @@ SRCREV_pn-xcb-proto ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xcb-proto-native ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xf86-video-intel ??= "87ea531c5dc5b39809395b277c330854aaaaf019"
 SRCREV_pn-xf86-video-intel-dri2 ??= "3dd7f0f9423bb891bc99cd3b77dc3d57e057a7ef"
-SRCREV_pn-xf86-video-omapfb ??= "2ae9a57ebc3236cd0aec6534067b91a5c6916a3a"
+SRCREV_pn-xf86-video-omapfb ??= "6cff996abcb305460e9fa2c75569b776f099c9d5"
 SRCREV_pn-xf86-input-keyboard ??= "3e28d68b50d291938734e9684b8296ca864f3892"
 SRCREV_pn-xf86-input-mouse ??= "ea5cfe804e112f320f14ad896c7802d53551d3e6"
 SRCREV_pn-xf86-input-synaptics ??= "934bc0012f948c52aadc8eda912f7728fb7394a2"
-- 
1.7.0.4


