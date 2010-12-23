Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DC0C4C81201
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:12 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 06:27:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690189134"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 06:27:12 -0800
Message-Id: <2a18e314609bbcfccfa15f198f6d8ab8233d9ddd.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 16:39:50 -0800
Date: Thu, 23 Dec 2010  6:27:11 -0800
To: poky@yoctoproject.org
Subject: [PATCH 13/28] db: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:13 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-support/db/db_4.2.52.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/db/db_4.2.52.bb b/meta/recipes-support/db/db_4.2.52.bb
index bd0511d..1181bb0 100644
--- a/meta/recipes-support/db/db_4.2.52.bb
+++ b/meta/recipes-support/db/db_4.2.52.bb
@@ -15,6 +15,8 @@ LICENSE = "BSD Sleepycat"
 VIRTUAL_NAME = "virtual/db"
 VIRTUAL_NAME_virtclass-native = "virtual/db-native"
 
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=6b31228067ad1236eceaaaf187ad6d1e"
+
 CONFLICTS = "db3"
 CONFLICTS_virtclass-native = "db3-native"
 PR = "r8"
-- 
1.7.2.3


