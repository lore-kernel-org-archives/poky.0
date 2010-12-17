Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F7814C81021
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 09:48:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Dec 2010 07:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,361,1288594800"; d="scan'208";a="637516039"
Received: from unknown (HELO localhost) ([10.255.16.45])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2010 07:48:39 -0800
Message-Id: <755549a500347c2b2d557e4cc8f53a9d365f45a6.1292600657.git.josh@linux.intel.com>
In-Reply-To: <cover.1292600657.git.josh@linux.intel.com>
References: <cover.1292600657.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 17 Dec 2010 14:09:48 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/4] gnome-doc-utils: add native variant using BBCLASSEXTEND
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
X-List-Received-Date: Fri, 17 Dec 2010 15:48:40 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-gnome/gnome/gnome-doc-utils.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils.inc b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
index 00a64e2..286200b 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils.inc
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
@@ -13,3 +13,5 @@ do_install_append() {
 }
 
 FILES_${PN} += "${datadir}/xml*"
+
+BBCLASSEXTEND = "native"
-- 
1.7.3.3


