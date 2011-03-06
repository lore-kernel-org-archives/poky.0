Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C4EB4C80581
	for <poky@yoctoproject.org>; Sun,  6 Mar 2011 11:19:40 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Mar 2011 09:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,272,1297065600"; d="scan'208";a="894350909"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by fmsmga001.fm.intel.com with ESMTP; 06 Mar 2011 09:19:40 -0800
Message-Id: <21f294d9600a369fff5eafb0c7358694d9ff0221.1299431945.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299431945.git.sgw@linux.intel.com>
References: <cover.1299431945.git.sgw@linux.intel.com>
Old-Date: Sun, 6 Mar 2011 09:12:04 -0800
Date: Sun, 06 Mar 2011  9:19:39 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 2/2] attr: Added ncurses to depends
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
X-List-Received-Date: Sun, 06 Mar 2011 17:19:40 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-support/attr/attr.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/attr/attr.inc b/meta/recipes-support/attr/attr.inc
index e9467d7..c110340 100644
--- a/meta/recipes-support/attr/attr.inc
+++ b/meta/recipes-support/attr/attr.inc
@@ -2,6 +2,8 @@ DESCRIPTION = "utilities for manipulating filesystem extended attributes"
 HOMEPAGE = "http://savannah.nongnu.org/projects/attr/"
 SECTION = "libs"
 
+DEPENDS = "ncurses"
+
 LICENSE = "LGPLv2.1+ & GPLv2+"
 LICENSE_${PN} = "GPLv2+"
 LICENSE_lib${PN} = "LGPLv2.1+"
-- 
1.7.1.1


