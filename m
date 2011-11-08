Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE93AE013AD
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 08:14:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Nov 2011 08:14:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,477,1315206000"; d="scan'208";a="87523774"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.12.16])
	by fmsmga002.fm.intel.com with ESMTP; 08 Nov 2011 08:14:43 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Nov 2011 08:14:42 -0800
Message-Id: <e38ded40c965fbf1f3b6242786dfe191322f276b.1320768816.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320768816.git.josh@linux.intel.com>
References: <cover.1320768816.git.josh@linux.intel.com>
In-Reply-To: <cover.1320768816.git.josh@linux.intel.com>
References: <cover.1320768816.git.josh@linux.intel.com>
Subject: [PATCH 1/1] clutter-1.8: add bbappend for new clutter-1.8 recipe
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
X-List-Received-Date: Tue, 08 Nov 2011 16:14:44 -0000

We've a new Clutter version in meta so need to add our
atom-pc bbappend modifications.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../recipes-graphics/clutter/clutter-1.8_1.8.0.bb  |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb

diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb b/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb
new file mode 100644
index 0000000..c7cc683
--- /dev/null
+++ b/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb
@@ -0,0 +1,4 @@
+DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
+EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
+PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"
+
-- 
1.7.7


