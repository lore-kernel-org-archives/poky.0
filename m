Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E91D1E0074C
	for <poky@yoctoproject.org>; Wed, 14 Sep 2011 13:46:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Sep 2011 13:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48488655"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.252])
	by orsmga001.jf.intel.com with ESMTP; 14 Sep 2011 13:45:48 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Sep 2011 13:45:42 -0700
Message-Id: <152a29e8c66bc359ba09d252272e3376a931b100.1316033090.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1316033090.git.sgw@linux.intel.com>
References: <cover.1316033090.git.sgw@linux.intel.com>
In-Reply-To: <cover.1316033090.git.sgw@linux.intel.com>
References: <cover.1316033090.git.sgw@linux.intel.com>
Subject: [PATCH 1/2] qt-x11-free-common: allow BBPATH to find qt3x11
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
X-List-Received-Date: Thu, 15 Sep 2011 03:55:27 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index 9e6cc81..6aa6306 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -8,7 +8,7 @@ PR = "r1"
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
 
-inherit qmake_base ${COREBASE}/meta-qt3/classes/qt3x11.bbclass
+inherit qmake_base qt3x11
 
 export QTDIR = "${S}"
 STAGING_QT_DIR = "${STAGING_DIR_HOST}/qt3"
-- 
1.7.6


