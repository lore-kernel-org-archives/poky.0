Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66EFA4C811CE
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Dec 2010 11:36:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="867145669"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2010 11:36:00 -0800
Message-Id: <cca50a3e5006f992e1878da587de80bf334ae4f1.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:01:04 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 07/13] mutter: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:03 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-graphics/mutter/mutter_2.28.1.bb |    4 +++-
 meta/recipes-graphics/mutter/mutter_git.bb    |    2 ++
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/mutter/mutter_2.28.1.bb b/meta/recipes-graphics/mutter/mutter_2.28.1.bb
index c4b8107..e4c185a 100644
--- a/meta/recipes-graphics/mutter/mutter_2.28.1.bb
+++ b/meta/recipes-graphics/mutter/mutter_2.28.1.bb
@@ -1,9 +1,11 @@
 require mutter.inc
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
 SRC_URI = "http://download.moblin.org/sources/mutter/2.28/mutter-2.28.1_0.0.tar.bz2 \
            file://nodocs.patch;patch=1 \
            file://nozenity.patch;patch=1 \
            file://fix_pkgconfig.patch;patch=1 \
            "
 
-S = "${WORKDIR}/mutter-2.28.1_0.0"
\ No newline at end of file
+S = "${WORKDIR}/mutter-2.28.1_0.0"
diff --git a/meta/recipes-graphics/mutter/mutter_git.bb b/meta/recipes-graphics/mutter/mutter_git.bb
index b41bf1e..e65bf17 100644
--- a/meta/recipes-graphics/mutter/mutter_git.bb
+++ b/meta/recipes-graphics/mutter/mutter_git.bb
@@ -3,6 +3,8 @@ require mutter.inc
 PV = "2.28.1+git${SRCPV}"
 PR = "r18"
 
+LIC_FILES_CHECKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
 # Gnome is the upstream but moblin is under more active development atm
 # git://git.gnome.org/mutter.git;protocol=git;branch=master
 #
-- 
1.7.1.1


