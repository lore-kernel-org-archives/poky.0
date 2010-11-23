Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9390E4C811D7
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 02:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="860503618"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2010 02:06:59 -0800
Message-Id: <83946841825bbfc74c1a87cb77ac4ce5717995d6.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 13:24:46 +0800
To: poky@yoctoproject.org
Subject: [PATCH 01/25] galago-daemon: Add license file checksum and update GPL information
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:16 -0000

Add COPYING file checksum to bb file and update the "GPL" to "GPLv2" according to the COPYING

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../galago/galago-daemon_0.5.1.bb                  |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb b/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
index da49b3d..69627ae 100644
--- a/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
+++ b/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
@@ -1,7 +1,8 @@
 SUMMARY =       "Desktop presence framework"
 DESCRIPTION =   "Galago is a desktop presence framework, designed to transmit presence information between programs."
 HOMEPAGE =      "http://www.galago-project.org/"
-LICENSE =       "GPL"
+LICENSE =       "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS =       "gettext libgalago dbus glib-2.0"
 
 SRC_URI =       "http://www.galago-project.org/files/releases/source/${PN}/${P}.tar.gz "
-- 
1.6.3.3


