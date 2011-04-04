Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28E764C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 14:24:51 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2011 12:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,299,1299484800"; d="scan'208";a="675105104"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2011 12:24:40 -0700
Message-Id: <603b43e614445ff5da295f4746c716d572d2992b.1301921659.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1301921659.git.nitin.a.kamble@intel.com>
References: <cover.1301921659.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 29 Mar 2011 10:29:40 -0700
Date: Mon, 04 Apr 2011  5:56:21 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/3] image.bbclass: make execution ldconfig verbose
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
X-List-Received-Date: Mon, 04 Apr 2011 19:24:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The failure of ldconfig was not getting logged anywhere before.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/image.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 2cc17e1..95e3f4d 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -113,7 +113,8 @@ fakeroot do_rootfs () {
 
 	# Run ldconfig on the image to create a valid cache 
 	# (new format for cross arch compatibility)
-	ldconfig -r ${IMAGE_ROOTFS} -c new
+	echo executing: ldconfig -r ${IMAGE_ROOTFS} -c new -v
+	ldconfig -r ${IMAGE_ROOTFS} -c new -v
 
 	# (re)create kernel modules dependencies
 	# This part is done by kernel-module-* postinstall scripts but if image do
-- 
1.7.2.2


