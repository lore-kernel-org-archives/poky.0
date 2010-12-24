Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6D8D4C8121C
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216405"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <6965af72fb91f923f47d89e619828bb32b9b3cee.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Sat, 25 Dec 2010 05:29:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 49/59] Remove unneccessary folder creation in do_deploy
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:55 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer_1.0.bb                 |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index e55cad1..975dfa9 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -34,11 +34,7 @@ fakeroot do_deploy () {
 	mkdir -p ${ADT_DEPLOY}
 	rm -f ${ADT_DEPLOY}/adt-installer.tar.bz2
 	rm -rf ${ADT_DIR}
-	mkdir -p ${ADT_DIR}
-	mkdir -p ${WORKDIR}/opkg/conf
-	mkdir -p ${WORKDIR}/opkg/build
-	mkdir -p ${WORKDIR}/scripts
-	mkdir -p ${WORKDIR}/build
+	mkdir -p ${ADT_DIR}/opkg/build
 	cp -r ${WORKDIR}/opkg ${ADT_DIR}/
 	cp -r ${WORKDIR}/opkg-0.1.8 ${ADT_DIR}/opkg/build
 	cp -r ${WORKDIR}/scripts ${ADT_DIR}/
-- 
1.7.0.4


