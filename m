Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0272B4C80FD4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:10:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Dec 2010 07:10:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="871324089"
Received: from unknown (HELO helios) ([10.255.16.56])
	by fmsmga001.fm.intel.com with SMTP; 23 Dec 2010 07:10:46 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 15:10:27 +0000
Message-Id: <b6ebbe6fcc1985f8545bb7949d946161d19bdf74.1293116495.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293116495.git.paul.eggleton@linux.intel.com>
References: <cover.1293116495.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 18:22:47 +0000
Date: Thu, 23 Dec 2010 15:10:27 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/4] quicky: fix Qt4 runtime dependencies
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
X-List-Received-Date: Thu, 23 Dec 2010 15:10:48 -0000

Avoid dragging in all of Qt4

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/qt-apps/quicky_0.4.bb |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-qt/qt-apps/quicky_0.4.bb b/meta/recipes-qt/qt-apps/quicky_0.4.bb
index 004e029..9e367f2 100644
--- a/meta/recipes-qt/qt-apps/quicky_0.4.bb
+++ b/meta/recipes-qt/qt-apps/quicky_0.4.bb
@@ -5,7 +5,6 @@ LIC_FILES_CHKSUM = "file://version.h;endline=19;md5=878bdaff438dab86298301fd1a21
 SECTION = "x11/apps"
 
 DEPENDS = "qt4-x11-free"
-RDEPENDS = "qt4-x11-free"
 
 SRC_URI = "http://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz"
 
-- 
1.7.1


