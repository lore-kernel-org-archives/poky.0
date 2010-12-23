Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D124B4C81110
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:19 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="639786570"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 06:27:19 -0800
Message-Id: <385d08e4622c98aaa9814fd3b7fa0c4e80552b4e.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:33:40 -0800
Date: Thu, 23 Dec 2010  6:27:19 -0800
To: poky@yoctoproject.org
Subject: [PATCH 21/28] unifdef Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:20 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../unifdef/unifdef-native_2.6.18+git.bb           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb b/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb
index d879782..d8719a2 100644
--- a/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb
+++ b/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "Kernel header preprocessor"
 SECTION = "devel"
 LICENSE = "GPL"
 
+LIC_FILES_CHKSUM = "file://${WORKDIR}/unifdef.c;endline=32;md5="
+
 SRC_URI = "file://unifdef.c"
 
 inherit native
-- 
1.7.2.3


