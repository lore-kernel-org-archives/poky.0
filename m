Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA14D4C8090C
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:35:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Feb 2011 05:35:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="657481079"
Received: from unknown (HELO localhost) ([10.255.14.192])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2011 05:35:05 -0800
Message-Id: <58c2e97116bc32e0a32086d99bc31d6e020d963d.1297690342.git.sgw@linux.intel.com>
In-Reply-To: <cover.1297690342.git.sgw@linux.intel.com>
References: <cover.1297690342.git.sgw@linux.intel.com>
Old-Date: Sun, 13 Feb 2011 23:57:59 -0800
Date: Mon, 14 Feb 2011  5:35:04 -0800
To: poky@yoctoproject.org
CC: 
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 2/5] bitbake.conf: change revision fetching to use newer fetch2 code
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
X-List-Received-Date: Mon, 14 Feb 2011 13:35:06 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/conf/bitbake.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index da50fe5..162c792 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -560,8 +560,8 @@ UPDATECOMMAND_cvs = "/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS}"
 UPDATECOMMAND_svn = "/usr/bin/env svn update ${SVNCOOPTS}"
 SRCDATE = "${DATE}"
 SRCREV = "INVALID"
-AUTOREV = "${@bb.fetch.get_autorev(d)}"
-SRCPV = "${@bb.fetch.get_srcrev(d)}"
+AUTOREV = "${@bb.fetch2.get_autorev(d)}"
+SRCPV = "${@bb.fetch2.get_srcrev(d)}"
 
 SRC_URI = "file://${FILE}"
 
-- 
1.7.1.1


