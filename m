Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22324E00301
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960383"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:15 -0700
Message-Id: <1c5171b2518ea3e037a53caaf50c4bf46bfc13ee.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 03/17] qemu: Poke more paths for presence of libgl
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

From: Khem Raj <raj.khem@gmail.com>

On ubuntu 11.10 libGL is not in
/usr/lib/`uname -i`-linux-gnu/ directory
so we search this dir too.

(From OE-Core rev: ced947e989dfbca8055fe57e14207cb6f1357430)

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-devtools/qemu/qemu.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index 2c6b114..1fb75d9 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -15,6 +15,7 @@ do_configure_prepend_virtclass-native() {
 
     test -e /usr/lib/libGL.so -a -e /usr/lib/libGLU.so && libgl='yes'
     test -e /usr/lib64/libGL.so -a -e /usr/lib64/libGLU.so && libgl='yes'
+    test -e /usr/lib/`uname -i`-linux-gnu/libGL.so -a -e /usr/lib/`uname -i`-linux-gnu/libGLU.so && libgl='yes'
 
     test -e /usr/lib/pkgconfig/sdl.pc -o -e /usr/lib64/pkgconfig/sdl.pc -o -e /usr/include/SDL/SDL.h && libsdl='yes'
 
-- 
1.7.7


