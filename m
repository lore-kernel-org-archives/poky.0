Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 641A2E00306
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960388"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:18 -0700
Message-Id: <e5cce8a57d40a16a5133c1a394ab0f3717741344.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 06/17] scripts/poky-qemu: fix libGL checks for recent Debian(ish) systems
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

On 64bit Debian(ish) systems libGL now lives in /usr/lib/x86_64-gnu/, add an
extra test to the qemu script to check for libGL and libGLU in directories
that match this pattern.

Based on commits by Khem Raj (0350be945877b61eb8125663887fd7ed1c3923ab) and
Anders Darander (1927021c78db1a92254785bbc257c00ed2dfcdba) in OE-Core.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 scripts/poky-qemu |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index c76b3ab..b1c3fc6 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -387,6 +387,7 @@ libgl='no'
 
 test -e /usr/lib/libGL.so -a -e /usr/lib/libGLU.so && libgl='yes'
 test -e /usr/lib64/libGL.so -a -e /usr/lib64/libGLU.so && libgl='yes'
+test -e /usr/lib/*-linux=gnu/libGL.so -a -e /usr/lib/*-linux-gnu/libGLU.so && libgl='yes'
 
 if [ "$libgl" != 'yes' ]; then
     echo "You need libGL.so and libGLU.so to exist in your library path to run the QEMU emulator.
-- 
1.7.7


