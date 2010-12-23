Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A094F4C80FD4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:10:25 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 07:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365836459"
Received: from unknown (HELO helios) ([10.255.16.56])
	by azsmga001.ch.intel.com with SMTP; 23 Dec 2010 07:10:23 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 15:10:24 +0000
Message-Id: <772fdbb25d15fcf7a190d98d0cf92a9bbc8fa331.1293116495.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293116495.git.paul.eggleton@linux.intel.com>
References: <cover.1293116495.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 18:18:05 +0000
Date: Thu, 23 Dec 2010 15:10:24 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/4] fotowall: fix runtime Qt4 dependencies
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
X-List-Received-Date: Thu, 23 Dec 2010 15:10:25 -0000

Fix the runtime dependencies of fotowall so it doesn't drag in the whole of
Qt4. As a bonus the appropriate Qt image plugins for loading jpeg, gif & tiff
files are now installed with fotowall making it actually usable.

Fixes [BUGID: #524]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/qt-apps/fotowall_0.9.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-qt/qt-apps/fotowall_0.9.bb b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
index 30dca4e..c5c751d 100644
--- a/meta/recipes-qt/qt-apps/fotowall_0.9.bb
+++ b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
@@ -7,8 +7,10 @@ LIC_FILES_CHKSUM = "file://GPL_V2;md5=79808397c3355f163c012616125c9e26 \
                     file://main.cpp;beginline=6;endline=11;md5=b569acc2bf8974a3082b58fc53b9d8dc"
 SECTION = "x11/apps"
 
+PR = "r1"
+
 DEPENDS = "qt4-x11-free"
-RDEPENDS = "qt4-x11-free"
+RRECOMMENDS_${PN} += "qt4-plugin-imageformat-gif qt4-plugin-imageformat-jpeg qt4-plugin-imageformat-tiff"
 
 SRC_URI = "http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.tar.bz2"
 
-- 
1.7.1


