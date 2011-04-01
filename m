Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD8D14C800BA
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 08:38:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Apr 2011 06:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,282,1299484800"; d="scan'208";a="674170625"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga002.fm.intel.com with ESMTP; 01 Apr 2011 06:38:55 -0700
Message-Id: <e889e5a184d05ed869d57de70b8f17ec4da2feec.1301664697.git.josh@linux.intel.com>
In-Reply-To: <cover.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
Old-Date: Fri, 1 Apr 2011 09:39:36 +0100
Date: Fri, 01 Apr 2011 14:38:54 +0100
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 7/7] xserver-xf86: explicitly disable fop document generation
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
X-List-Received-Date: Fri, 01 Apr 2011 13:38:57 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../xorg-xserver/xserver-xf86-common.inc           |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc b/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
index f9ea0e4..b1a0f08 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
@@ -34,3 +34,4 @@ FILES_${PN}-dbg += "${libdir}/xorg/modules/.debug \
 
 SRC_URI += "file://macro_tweak.patch"
 
+EXTRA_OECONF = "--with-fop=no"
-- 
1.7.4.1


