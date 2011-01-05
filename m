Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F3504C811ED
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:38:30 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 13:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="874789899"
Received: from unknown (HELO localhost) ([172.25.110.36])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2011 13:38:30 -0800
Message-Id: <e1bff00f5298f74f146c7ec902f3c6db0e36b43b.1294237909.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1294237909.git.nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Wed, 5 Jan 2011 10:03:27 -0800
Date: Wed, 05 Jan 2011  7:07:48 -0800
To: poky@yoctoproject.org
Subject: [PATCH 7/8] cpan.bbclass: add a new parameter EXTRA_PERLFLAGS
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
X-List-Received-Date: Wed, 05 Jan 2011 21:38:30 -0000

We use host perl while building target perl modules. When some of the
prebuilt perl modules such as scalar::util are used in the build process
directly or indirectly, perl needs to load the arch specific .so library
file. If perl can not find the .so library files, then perl
tries to use the target pm files which ends up in circular perl module
depedancy causing build time perl invocation to fail.

Adding this new parameter viz EXTRA_PERLFLAGS to cpan.bbclass allows perl
module recipes to specify the location of such host .so files for hostperl,
so that build time invocation of perl does not fail.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/cpan.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/cpan.bbclass b/meta/classes/cpan.bbclass
index 05f2374..1cfd022 100644
--- a/meta/classes/cpan.bbclass
+++ b/meta/classes/cpan.bbclass
@@ -4,6 +4,7 @@
 inherit cpan-base
 
 EXTRA_CPANFLAGS ?= ""
+EXTRA_PERLFLAGS ?= ""
 
 # Env var which tells perl if it should use host (no) or target (yes) settings
 export PERLCONFIGTARGET = "${@is_target(d)}"
@@ -15,7 +16,7 @@ export PERL_ARCHLIB = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}"
 
 cpan_do_configure () {
 	export PERL5LIB="${PERL_ARCHLIB}"
-	yes '' | perl Makefile.PL ${EXTRA_CPANFLAGS}
+	yes '' | perl ${EXTRA_PERLFLAGS} Makefile.PL ${EXTRA_CPANFLAGS}
 	if [ "${BUILD_SYS}" != "${HOST_SYS}" ]; then
 		. ${STAGING_LIBDIR}/perl/config.sh
 		# Use find since there can be a Makefile generated for each Makefile.PL
-- 
1.7.2.2


