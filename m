Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 026974C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:37:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 13:37:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="643819546"
Received: from unknown (HELO localhost) ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 13:37:28 -0800
Message-Id: <2983595751b8e61369a9ca734179389a3400de10.1294237909.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1294237909.git.nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Sun, 26 Dec 2010 18:09:40 -0800
Date: Wed, 05 Jan 2011  7:06:46 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/8] byacc: upgrade recipe from 20100610 to 20101127
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
X-List-Received-Date: Wed, 05 Jan 2011 21:37:49 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-extended/byacc/byacc_20100610.bb |    7 -------
 meta/recipes-extended/byacc/byacc_20101127.bb |    7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 meta/recipes-extended/byacc/byacc_20100610.bb
 create mode 100644 meta/recipes-extended/byacc/byacc_20101127.bb

diff --git a/meta/recipes-extended/byacc/byacc_20100610.bb b/meta/recipes-extended/byacc/byacc_20100610.bb
deleted file mode 100644
index f02a11b..0000000
--- a/meta/recipes-extended/byacc/byacc_20100610.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-PR = "r0"
-LICENSE="other-BSD"
-LIC_FILES_CHKSUM = "file://package/debian/copyright;md5=4dc4c30f840a7203fb6edf20b3db849e"
-require byacc.inc
-
-SRC_URI[md5sum] = "3063667be3bfcd844bdac9afd560954b"
-SRC_URI[sha256sum] = "02bcfb9262127fe23abe2c42f02de12c3ea51a9fffc9fb82ffa3bda7289d72c1"
diff --git a/meta/recipes-extended/byacc/byacc_20101127.bb b/meta/recipes-extended/byacc/byacc_20101127.bb
new file mode 100644
index 0000000..b6b7b70
--- /dev/null
+++ b/meta/recipes-extended/byacc/byacc_20101127.bb
@@ -0,0 +1,7 @@
+PR = "r0"
+LICENSE="other-BSD"
+LIC_FILES_CHKSUM = "file://package/debian/copyright;md5=4dc4c30f840a7203fb6edf20b3db849e"
+require byacc.inc
+
+SRC_URI[md5sum] = "5931a27e43102dc868745bf4dce91fb4"
+SRC_URI[sha256sum] = "c172c7ed2ee2130510d4d6e134bcac791b217e4883051137690613ac011aca47"
-- 
1.7.2.2


