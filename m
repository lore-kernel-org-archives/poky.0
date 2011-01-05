Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAB144C811F0
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:38:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 13:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="590234786"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 13:38:30 -0800
Message-Id: <01330677e0d535827cc2a3d1324ad8928f77abd6.1294237909.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1294237909.git.nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Wed, 5 Jan 2011 10:14:18 -0800
Date: Wed, 05 Jan 2011  7:08:28 -0800
To: poky@yoctoproject.org
Subject: [PATCH 8/8] libxml-simple-perl: fix build failure with perl 5.12.2
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
X-List-Received-Date: Wed, 05 Jan 2011 21:38:31 -0000

for hostperl needing to load .so files (for module scalar::util) the host/native
perl library path is placed 1st in the @INC with the -I parameter to perl.
  Otherwise hostperl gives error can not load module scalar::util.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../perl/libxml-simple-perl_2.18.bb                |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb b/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
index 136e117..ca57776 100644
--- a/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
+++ b/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
@@ -2,7 +2,7 @@ SECTION = "libs"
 LICENSE = "Artistic"
 LIC_FILES_CHKSUM = "file://README;beginline=70;md5=94aa5d46682b411a53a5494cfb22640e"
 DEPENDS += "libxml-parser-perl"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.cpan.org/modules/by-module/XML/XML-Simple-${PV}.tar.gz"
 
@@ -11,4 +11,6 @@ SRC_URI[sha256sum] = "a54967c188cda3e20f496c83be4de3f1740eeaa83c0380712ecd969ad8
 
 S = "${WORKDIR}/XML-Simple-${PV}"
 
+EXTRA_PERLFLAGS = "-I ${STAGING_LIBDIR_NATIVE}/perl/${@get_perl_version(d)}"
+
 inherit cpan
-- 
1.7.2.2


