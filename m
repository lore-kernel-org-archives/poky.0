Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F8674C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:31:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 21:31:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="863917615"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 21:31:49 -0800
Message-Id: <36f6b791626824f8531bf03005683f191993cc17.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 13:56:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/14] acpid: update to 1.0.10
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
X-List-Received-Date: Fri, 03 Dec 2010 05:31:50 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-bsp/acpid/acpid.inc       |    7 +++++--
 meta/recipes-bsp/acpid/acpid_1.0.10.bb |    6 ++++++
 meta/recipes-bsp/acpid/acpid_1.0.6.bb  |    3 ---
 3 files changed, 11 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-bsp/acpid/acpid_1.0.10.bb
 delete mode 100644 meta/recipes-bsp/acpid/acpid_1.0.6.bb

diff --git a/meta/recipes-bsp/acpid/acpid.inc b/meta/recipes-bsp/acpid/acpid.inc
index 8ac523d..3c0219f 100644
--- a/meta/recipes-bsp/acpid/acpid.inc
+++ b/meta/recipes-bsp/acpid/acpid.inc
@@ -1,7 +1,10 @@
-SECTION = "base"
 DESCRIPTION = "A daemon for delivering ACPI events."
-LICENSE="GPL"
+HOMEPAGE = "http://sourceforge.net/projects/acpid/"
+BUGTRACKER = "http://sourceforge.net/tracker/?group_id=33140&atid=407341"
+
+LICENSE="GPLv2+"
 
+SECTION = "base"
 SRC_URI = "${SOURCEFORGE_MIRROR}/acpid/acpid-${PV}.tar.gz \
            file://init"
 
diff --git a/meta/recipes-bsp/acpid/acpid_1.0.10.bb b/meta/recipes-bsp/acpid/acpid_1.0.10.bb
new file mode 100644
index 0000000..ab4b582
--- /dev/null
+++ b/meta/recipes-bsp/acpid/acpid_1.0.10.bb
@@ -0,0 +1,6 @@
+require acpid.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b \
+                    file://acpid.h;endline=24;md5=324a9cf225ae69ddaad1bf9d942115b5"
+
+PR = "r0"
diff --git a/meta/recipes-bsp/acpid/acpid_1.0.6.bb b/meta/recipes-bsp/acpid/acpid_1.0.6.bb
deleted file mode 100644
index a95cb54..0000000
--- a/meta/recipes-bsp/acpid/acpid_1.0.6.bb
+++ /dev/null
@@ -1,3 +0,0 @@
-require acpid.inc
-LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
-PR = "r5"
-- 
1.7.0.4


