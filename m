Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D48C4C80BCF
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 02:01:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 00:01:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="636907754"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 00:01:34 -0800
Message-Id: <6a5281e1ea64a652adc0c23ee8b5b3d41ae0662c.1292486693.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1292486693.git.jiajun.xu@intel.com>
References: <cover.1292486693.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Date: Thu, 16 Dec 2010 16:04:00 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] sanity.bbclass: Check if DISPLAY is set when IMAGETEST is set
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
X-List-Received-Date: Thu, 16 Dec 2010 08:01:35 -0000

Fixes [BUGID: 594]

In imagetest-qemu.bbclass, we depend on DISPLAY to start qemu in
a X desktop. When user wants to run qemu sanity test, we need to
check if the variable is set.

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 meta/classes/sanity.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index e1f37ac..bc02a82 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -139,6 +139,10 @@ def check_sanity(e):
 		missing = missing.rstrip(',')
 		messages = messages + "Please install following missing utilities: %s\n" % missing
 
+	# Check if DISPLAY is set if IMAGETEST is set
+	if not data.getVar( 'DISPLAY', e.data, True ) and data.getVar( 'IMAGETEST', e.data, True ) == 'qemu':
+		messages = messages + 'qemuimagetest needs a X desktop to start qemu, please set DISPLAY correctly (e.g. DISPLAY=:1.0)\n'
+
 	# Ensure we have the binary for TERMCMD, as when patch application fails the error is fairly intimidating
 	termcmd = data.getVar("TERMCMD", e.data, True)
 	term = termcmd.split()[0]
-- 
1.7.1


