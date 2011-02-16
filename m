Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 274044C80093
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 13:58:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Feb 2011 11:58:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,481,1291622400"; d="scan'208";a="603342501"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 16 Feb 2011 11:58:08 -0800
Message-Id: <7b9ae9c045e9da592fa3d393561833774f6eeef3.1297886129.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1297886129.git.nitin.a.kamble@intel.com>
References: <cover.1297886129.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Feb 2011 11:53:16 -0800
Date: Wed, 16 Feb 2011 11:58:08 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] perl perl-native: turn on parallel make
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
X-List-Received-Date: Wed, 16 Feb 2011 19:58:09 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

tested this on all architectures, and build works fine.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/perl/perl-native_5.12.2.bb |    2 --
 meta/recipes-devtools/perl/perl_5.12.2.bb        |    2 --
 2 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-native_5.12.2.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
index fe8dbaa..790eae2 100644
--- a/meta/recipes-devtools/perl/perl-native_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
@@ -96,5 +96,3 @@ do_install_append_nylon() {
 		perl -pi -e 's/-Wdeclaration-after-statement //g' ${i}
 	done
 }
-
-PARALLEL_MAKE = ""
diff --git a/meta/recipes-devtools/perl/perl_5.12.2.bb b/meta/recipes-devtools/perl/perl_5.12.2.bb
index 82801e8..b27e20f 100644
--- a/meta/recipes-devtools/perl/perl_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl_5.12.2.bb
@@ -272,5 +272,3 @@ RPROVIDES_perl-lib = "perl-lib"
 require perl-rdepends_${PV}.inc
 require perl-rprovides.inc
 require perl-rprovides_${PV}.inc
-
-PARALLEL_MAKE = ""
-- 
1.7.3.4


