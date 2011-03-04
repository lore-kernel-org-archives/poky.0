Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C78384C800A4
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 21:45:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2011 19:45:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,262,1297065600"; d="scan'208";a="893655502"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 19:45:24 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Mar 2011 11:50:47 +0800
Message-Id: <98727668717469ae0d90f6d8deb1f8bf224c36f6.1299210292.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1299210292.git.ke.yu@intel.com>
References: <cover.1299210292.git.ke.yu@intel.com>
Subject: [PATCH 1/1] x11vnc: add big endian CFLAG for mips, to fix bug 782
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
X-List-Received-Date: Fri, 04 Mar 2011 03:45:52 -0000

linux mips is big endian, so need "LIBVNCSERVER_WORDS_BIGENDIAN"
flag for mips compilling.

this patch fix bug [YOCTO #782]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
index f5a6662..17e9593 100644
--- a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
+++ b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
@@ -17,3 +17,4 @@ SRC_URI[sha256sum] = "60a7cceee2c9a5f1c854340b2bae13f975ac55906237042f81f795b28a
 
 inherit autotools
 
+CFLAGS_mips += "-DLIBVNCSERVER_WORDS_BIGENDIAN"
-- 
1.7.0.4


