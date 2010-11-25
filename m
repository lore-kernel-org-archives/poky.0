Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 86B344C811CE
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 02:50:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="680966944"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 02:50:34 -0800
Message-Id: <1dfcaf97d0e4f2b6eb484b12f796b0a2ab0365c7.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 13:34:16 +0800
To: poky@yoctoproject.org
Subject: [PATCH 08/20] python-pygtk:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:35 -0000

Add COPYING file checksum to bb file and update the "LGPL" to "LGPLv2.1" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../recipes-devtools/python/python-pygtk_2.17.0.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
index 3dcfd64..d3f4f50 100644
--- a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
+++ b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
@@ -5,7 +5,8 @@ DEPENDS = "gtk+ libglade python-pycairo python-pygobject"
 RDEPENDS = "python-shell python-pycairo python-pygobject"
 PROVIDES = "python-pygtk2"
 SRCNAME = "pygtk"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=a916467b91076e631dd8edb7424769c7"
 PR = "ml8.3"
 
 SRC_URI = "ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.17/${SRCNAME}-${PV}.tar.bz2 \
-- 
1.6.3.3


