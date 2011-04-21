Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB09D4C80AB0
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 15:25:30 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Apr 2011 13:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="682128791"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 21 Apr 2011 13:25:30 -0700
Message-Id: <2a7fac739f15ff0ef8eb55712443c0b371b95fdd.1303417346.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1303417346.git.nitin.a.kamble@intel.com>
References: <cover.1303417346.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 20 Apr 2011 16:27:09 -0700
Date: Thu, 21 Apr 2011 13:25:04 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 6/8] cpan.bbclass: export PERLHOSTLIB for perl modules
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
X-List-Received-Date: Thu, 21 Apr 2011 20:25:30 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This makes sure that native perl .so can get loaded at the buildtime, and
avoids following kind of errors while building perl modules:

Nitin A Kamble <nitin.a.kamble@intel.com> 2011/04/20

+ perl Makefile.PL
EXPATLIBPATH=/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib
EXPATINCPATH=/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/include
*** Module name IN:
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/Cwd.pm
*** Module name OUT:
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/Cwd.pm
*** Module name IN:
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/Fcntl.pm
*** Module name OUT:
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/Fcntl.pm
Can't load
'/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/auto/Fcntl/Fcntl.so'
for module Fcntl:
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/auto/Fcntl/Fcntl.so:
wrong ELF class: ELFCLASS32 at
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/XSLoader.pm
line 79.
 at
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/Fcntl.pm
line 215
BEGIN failed--compilation aborted at
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/Fcntl.pm
line 216.
Compilation failed in require at
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/File/Temp.pm
line 146.
BEGIN failed--compilation aborted at
/disk0/pokybuild/build0/tmp/sysroots/qemux86/usr/lib/perl/5.12.2/File/Temp.pm
line 146.
Compilation failed in require at inc/Devel/CheckLib.pm line 12.
BEGIN failed--compilation aborted at inc/Devel/CheckLib.pm line 12.
Compilation failed in require at Makefile.PL line 5.
BEGIN failed--compilation aborted at Makefile.PL line 5.
ERROR: Function 'do_configure' failed (see
/disk0/pokybuild/build0/tmp/work/i586-poky-linux/libxml-parser-perl-2.40-r0/temp/log.do_configure.16956
for further information)

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/cpan.bbclass |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/classes/cpan.bbclass b/meta/classes/cpan.bbclass
index 1cfd022..9b8431b 100644
--- a/meta/classes/cpan.bbclass
+++ b/meta/classes/cpan.bbclass
@@ -13,6 +13,7 @@ export PERLCONFIGTARGET = "${@is_target(d)}"
 export PERL_INC = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}/CORE"
 export PERL_LIB = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}"
 export PERL_ARCHLIB = "${STAGING_LIBDIR}/perl/${@get_perl_version(d)}"
+export PERLHOSTLIB = "${STAGING_LIBDIR_NATIVE}/perl/${@get_perl_version(d)}/"
 
 cpan_do_configure () {
 	export PERL5LIB="${PERL_ARCHLIB}"
-- 
1.7.2.2


