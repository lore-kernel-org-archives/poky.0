Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CE0D4C8115C
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:12:15 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 07:10:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690202138"
Received: from unknown (HELO helios) ([10.255.16.56])
	by orsmga001.jf.intel.com with SMTP; 23 Dec 2010 07:10:20 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 15:10:21 +0000
Message-Id: <28b7922e5c0738ca32769ad558b2a6d3e9af9ebb.1293116495.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293116495.git.paul.eggleton@linux.intel.com>
References: <cover.1293116495.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 18:14:58 +0000
Date: Thu, 23 Dec 2010 15:10:21 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/4] qmake2.bbclass: add space to end of DEPENDS_prepend
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
X-List-Received-Date: Thu, 23 Dec 2010 15:12:15 -0000

There needs to be a space at the end of DEPENDS_prepend or otherwise it can
collide with the contents of DEPENDS. The OE version of this file has this.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/qmake2.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/qmake2.bbclass b/meta/classes/qmake2.bbclass
index e681026..3772189 100644
--- a/meta/classes/qmake2.bbclass
+++ b/meta/classes/qmake2.bbclass
@@ -3,7 +3,7 @@
 #
 inherit qmake_base
 
-DEPENDS_prepend = "qt4-tools-native"
+DEPENDS_prepend = "qt4-tools-native "
 
 export QMAKESPEC = "${STAGING_DATADIR}/qt4/mkspecs/${TARGET_OS}-oe-g++"
 export OE_QMAKE_UIC = "${STAGING_BINDIR_NATIVE}/uic4"
-- 
1.7.1


