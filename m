Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3ADE64C811CD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 08:08:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630566285"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 08:08:11 -0800
Message-Id: <86d20c0bc447e10af72e3a574c1244b14e4cbc44.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 22:18:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/11] gtk-theme-torturer: Add license check sum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:12 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../gtk-theme-torturer/gtk-theme-torturer_git.bb   |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gtk-theme-torturer/gtk-theme-torturer_git.bb b/meta/recipes-gnome/gtk-theme-torturer/gtk-theme-torturer_git.bb
index adcdf2e..a84ab04 100644
--- a/meta/recipes-gnome/gtk-theme-torturer/gtk-theme-torturer_git.bb
+++ b/meta/recipes-gnome/gtk-theme-torturer/gtk-theme-torturer_git.bb
@@ -3,6 +3,7 @@ DEPENDS = "gtk+"
 HOMEPAGE = "http://wiki.laptop.org/go/GTK_for_OLPC"
 SECTION = "devel"
 LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://appwindow.c;endline=13;md5=8c09920de460c7ea1f64ee56986aabd9"
 
 PV = "0.0.0+git${SRCDATE}"
 
-- 
1.7.0.4


