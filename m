Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 801184C811D7
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:41 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2010 02:07:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="629475056"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 02:07:40 -0800
Message-Id: <d4fc3c2dba54fcfb65fbb1f1d9f77b673f703370.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 16:55:31 +0800
To: poky@yoctoproject.org
Subject: [PATCH 21/25] dosfstools:Add license checksum and update the GPL information
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:41 -0000

Add COPYING file checksum to bb file and update the "GPL" to "GPLv2" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../recipes-devtools/dosfstools/dosfstools_2.10.bb |    4 ++--
 .../recipes-devtools/dosfstools/dosfstools_2.11.bb |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb b/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb
index 100044b..dadf2f9 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb
+++ b/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb
@@ -6,8 +6,8 @@ DESCRIPTION = "DOS FAT Filesystem Utilities"
 
 SECTION = "base"
 PRIORITY = "optional"
-LICENSE = "GPL"
-
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://mkdosfs/COPYING;md5=cbe67f08d6883bff587f615f0cc81aa8"
 PR = "r2"
 
 SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}.src.tar.gz \
diff --git a/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb b/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
index a5f6e03..f21e7b9 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
+++ b/meta/recipes-devtools/dosfstools/dosfstools_2.11.bb
@@ -6,8 +6,8 @@ DESCRIPTION = "DOS FAT Filesystem Utilities"
 
 SECTION = "base"
 PRIORITY = "optional"
-LICENSE = "GPL"
-
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://mkdosfs/COPYING;md5=cbe67f08d6883bff587f615f0cc81aa8"
 PR = "r0"
 
 SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}.src.tar.gz \
-- 
1.6.3.3


