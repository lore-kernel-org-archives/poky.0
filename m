Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19CF24C80A4D
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:07:55 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 15:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="746484576"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 15:07:54 -0700
Message-Id: <d9563fce5cb629e0bc18aef5806fc9f17f26a993.1305236058.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305236058.git.tom.zanussi@intel.com>
References: <cover.1305236058.git.tom.zanussi@intel.com>
Old-Date: Thu, 12 May 2011 09:33:39 -0500
Date: Thu, 12 May 2011 17:07:22 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/4] meta-crownbay: add xserver-xf86-dri-lite_1.9.3 .bbappend
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
X-List-Received-Date: Thu, 12 May 2011 22:07:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd 1.6.1 requires xserver 1.9.3, and we need to add a config option
to enable dga.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
new file mode 100644
index 0000000..b2808ef
--- /dev/null
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += "--enable-dga"
-- 
1.7.0.4


