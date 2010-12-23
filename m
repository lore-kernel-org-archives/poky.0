Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A21E64C811F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:14 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="871314087"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2010 06:27:14 -0800
Message-Id: <639085108233d64c1d5240de3fe9725ffed254fe.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 16:40:57 -0800
Date: Thu, 23 Dec 2010  6:27:13 -0800
To: poky@yoctoproject.org
Subject: [PATCH 15/28] perl: Add LIC_FILES_CHKSUM to native recipe
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:14 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-devtools/perl/perl-native_5.8.8.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-native_5.8.8.bb b/meta/recipes-devtools/perl/perl-native_5.8.8.bb
index ad71b87..cc946af 100644
--- a/meta/recipes-devtools/perl/perl-native_5.8.8.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.8.8.bb
@@ -5,6 +5,9 @@ LICENSE = "Artistic|GPL"
 DEPENDS = "virtual/db-native gdbm-native"
 PR = "r14"
 
+LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
+                    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
+
 SRC_URI = "http://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
            file://perl-5.8.8-gcc-4.2.patch;patch=1 \
            file://Configure-multilib.patch;patch=1 \
-- 
1.7.2.3


