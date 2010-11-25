Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BE024C8110C
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 02:50:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="353142911"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 02:50:26 -0800
Message-Id: <abb045a88029694a4cca8147bd3b26e869bbd5ab.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 11:22:29 +0800
To: poky@yoctoproject.org
Subject: [PATCH 02/20] perl:Add license checksum to bb file
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:27 -0000

Add Copying file and Artistic file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/perl/perl_5.8.8.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl_5.8.8.bb b/meta/recipes-devtools/perl/perl_5.8.8.bb
index 5060705..3c0c676 100644
--- a/meta/recipes-devtools/perl/perl_5.8.8.bb
+++ b/meta/recipes-devtools/perl/perl_5.8.8.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "Perl is a popular scripting language."
 HOMEPAGE = "http://www.perl.org/"
 SECTION = "devel"
 LICENSE = "Artistic|GPL"
+LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
+		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
 PRIORITY = "optional"
 # We need gnugrep (for -I)
 DEPENDS = "virtual/db perl-native grep-native"
-- 
1.6.3.3


