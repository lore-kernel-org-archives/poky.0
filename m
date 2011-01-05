Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B40C14C811EB
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:37:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 13:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="643819621"
Received: from unknown (HELO localhost) ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 13:37:49 -0800
Message-Id: <cdc029d39dc999a893e3d4c97e6b30fcbe060c39.1294237909.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1294237909.git.nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Thu, 30 Dec 2010 12:27:54 -0800
Date: Wed, 05 Jan 2011  7:07:27 -0800
To: poky@yoctoproject.org
Subject: [PATCH 6/8] cpan.bbclass: use LIBDIR instead of DATADIR
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
X-List-Received-Date: Wed, 05 Jan 2011 21:37:49 -0000

perl 5.12.2 does not use /usr/share/perl path, and all that stuff goes
in /usr/lib/perl. This commit fixes cpan class which depends on
/usr/share/perl.

cpan.base/build.bbclass: change /usr/lib/perl5 to /usr/lib/perl

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/cpan-base.bbclass  |    4 ++--
 meta/classes/cpan.bbclass       |    2 +-
 meta/classes/cpan_build.bbclass |    4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/classes/cpan-base.bbclass b/meta/classes/cpan-base.bbclass
index 1d13ff3..6cd2aa3 100644
--- a/meta/classes/cpan-base.bbclass
+++ b/meta/classes/cpan-base.bbclass
@@ -2,7 +2,7 @@
 # cpan-base providers various perl related information needed for building
 # cpan modules
 #
-FILES_${PN} += "${libdir}/perl5 ${datadir}/perl5"
+FILES_${PN} += "${libdir}/perl ${datadir}/perl"
 
 DEPENDS  += "${@["perl", "perl-native"][(bb.data.inherits_class('native', d))]}"
 RDEPENDS  += "${@["perl", ""][(bb.data.inherits_class('native', d))]}"
@@ -27,7 +27,7 @@ def get_perl_version(d):
 # Determine where the library directories are
 def perl_get_libdirs(d):
 	libdir = bb.data.getVar('libdir', d, 1)
-	libdirs = libdir + '/perl5'
+	libdirs = libdir + '/perl'
 	return libdirs
 
 def is_target(d):
diff --git a/meta/classes/cpan.bbclass b/meta/classes/cpan.bbclass
index 513f0b3..05f2374 100644
--- a/meta/classes/cpan.bbclass
+++ b/meta/classes/cpan.bbclass
@@ -10,7 +10,7 @@ export PERLCONFIGTARGET = "${@is_target(d)}"
 
 # Env var which tells perl where the perl include files are
 export PERL_INC = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}/CORE"
-export PERL_LIB = "${STAGING_DATADIR}/perl/${@get_perl_version(d)}"
+export PERL_LIB = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}"
 export PERL_ARCHLIB = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}"
 
 cpan_do_configure () {
diff --git a/meta/classes/cpan_build.bbclass b/meta/classes/cpan_build.bbclass
index dd8d543..cc503a4 100644
--- a/meta/classes/cpan_build.bbclass
+++ b/meta/classes/cpan_build.bbclass
@@ -26,8 +26,8 @@ cpan_build_do_configure () {
 
 			perl Build.PL --installdirs vendor \
 				--destdir ${D} \
-				--install_path lib="${datadir}/perl5" \
-				--install_path arch="${libdir}/perl5" \
+				--install_path lib="${datadir}/perl" \
+				--install_path arch="${libdir}/perl" \
 				--install_path script=${bindir} \
 				--install_path bin=${bindir} \
 				--install_path bindoc=${mandir}/man1 \
-- 
1.7.2.2


