Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 351034C80AF2
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 19:53:57 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Apr 2011 17:53:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="423613745"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 21 Apr 2011 17:53:42 -0700
Message-Id: <f91f4f462dcba96df626cc01e0c44eb3e31a946a.1303433480.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1303433480.git.nitin.a.kamble@intel.com>
References: <cover.1303433480.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 8 Apr 2011 02:24:13 -0700
Date: Thu, 21 Apr 2011 17:53:17 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 7/8] libxml-parser-perl: upgrade from 2.36 to 2.40
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
X-List-Received-Date: Fri, 22 Apr 2011 00:53:57 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

---
 ...e_2.36.bb => libxml-parser-perl-native_2.40.bb} |    0
 ...ser-perl_2.36.bb => libxml-parser-perl_2.40.bb} |    8 ++++----
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-devtools/perl/{libxml-parser-perl-native_2.36.bb => libxml-parser-perl-native_2.40.bb} (100%)
 rename meta/recipes-devtools/perl/{libxml-parser-perl_2.36.bb => libxml-parser-perl_2.40.bb} (61%)

diff --git a/meta/recipes-devtools/perl/libxml-parser-perl-native_2.36.bb b/meta/recipes-devtools/perl/libxml-parser-perl-native_2.40.bb
similarity index 100%
rename from meta/recipes-devtools/perl/libxml-parser-perl-native_2.36.bb
rename to meta/recipes-devtools/perl/libxml-parser-perl-native_2.40.bb
diff --git a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb b/meta/recipes-devtools/perl/libxml-parser-perl_2.40.bb
similarity index 61%
rename from meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
rename to meta/recipes-devtools/perl/libxml-parser-perl_2.40.bb
index 3287d26..c2d1bdb 100644
--- a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
+++ b/meta/recipes-devtools/perl/libxml-parser-perl_2.40.bb
@@ -1,14 +1,14 @@
 SECTION = "libs"
 LICENSE = "Artistic"
-LIC_FILES_CHKSUM = "file://README;endline=6;md5=fa7bbbd54d37d6ecf4ef33b7c98b9cd7"
+LIC_FILES_CHKSUM = "file://README;beginline=2;endline=6;md5=c8767d7516229f07b26e42d1cf8b51f1"
 DEPENDS += "expat expat-native"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://www.cpan.org/modules/by-module/XML/XML-Parser-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "1b868962b658bd87e1563ecd56498ded"
-SRC_URI[sha256sum] = "9fd529867402456bd826fe0e5588d35b3a2e27e586a2fd838d1352b71c2ed73f"
+SRC_URI[md5sum] = "c66e9adba003d0667cc40115ccd837a5"
+SRC_URI[sha256sum] = "e5e433684e799ef7b6b852c0ca31b71054717628555444d3dc9fceac0df71512"
 
 S = "${WORKDIR}/XML-Parser-${PV}"
 
-- 
1.7.2.2


