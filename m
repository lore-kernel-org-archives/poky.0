Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDC7E4C80AAE
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2011 10:00:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="893055691"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2011 10:00:12 -0800
Message-Id: <f8297baecf5cec2c6e59761779a2a465a015e77c.1299088353.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Mon, 28 Feb 2011 16:46:18 +0800
Date: Wed, 02 Mar 2011 10:00:12 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 01/26] attr: Change SRC_URI to a correct location
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:29 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

attr has changed its download link, thus change accordingly.

This fixes [BUGID #710]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-support/attr/attr.inc       |    2 +-
 meta/recipes-support/attr/attr_2.4.44.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/attr/attr.inc b/meta/recipes-support/attr/attr.inc
index 9a8b0f6..e9467d7 100644
--- a/meta/recipes-support/attr/attr.inc
+++ b/meta/recipes-support/attr/attr.inc
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://doc/COPYING;md5=2d0aa14b3fce4694e4f615e30186335f \
                     file://attr/attr.c;endline=17;md5=be0403261f0847e5f43ed5b08d19593c \
                     file://libattr/libattr.c;endline=17;md5=7970f77049f8fa1199fff62a7ab724fb"
 
-SRC_URI = "http://download.savannah.gnu.org/attr/${BP}.src.tar.gz"
+SRC_URI = "http://download.savannah.gnu.org/releases/attr/${BP}.src.tar.gz"
 
 require ea-acl.inc
 
diff --git a/meta/recipes-support/attr/attr_2.4.44.bb b/meta/recipes-support/attr/attr_2.4.44.bb
index 4be27d0..a0945f1 100644
--- a/meta/recipes-support/attr/attr_2.4.44.bb
+++ b/meta/recipes-support/attr/attr_2.4.44.bb
@@ -1,6 +1,6 @@
 require attr.inc
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI += "file://memory-leak-in-copy.patch \
             file://memory-leak2.patch \
-- 
1.7.1


