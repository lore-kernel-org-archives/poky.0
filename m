Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2BFFE4C8110E
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2010 06:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="630270667"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 06:17:36 -0800
Message-Id: <40343ed2dccd73796c4f46fa3bd2efcaff511911.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 15:16:23 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/8] fotowall: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:37 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-qt/qt-apps/fotowall_0.9.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-qt/qt-apps/fotowall_0.9.bb b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
index 4070ac5..e826a5a 100644
--- a/meta/recipes-qt/qt-apps/fotowall_0.9.bb
+++ b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
@@ -3,6 +3,8 @@ in a personal way. You can add pictures, then resize, move, change colors, text,
 
 HOMEPAGE = "http://www.enricoros.com/opensource/fotowall"
 LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://GPL_V2;md5=79808397c3355f163c012616125c9e26 \
+                    file://main.cpp;beginline=6;endline=11;md5=b569acc2bf8974a3082b58fc53b9d8dc"
 SECTION = "x11/apps"
 
 DEPENDS = "qt4-x11-free"
-- 
1.7.0.4


