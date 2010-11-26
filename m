Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E0D64C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:23 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 07:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630558983"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 07:36:00 -0800
Message-Id: <c3b4accd5d40a2ab917c53f5d8c901fb78f67e01.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 18:55:37 +0800
To: poky@yoctoproject.org
Subject: [PATCH 09/14] libxml-parser-perl:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 15:36:23 -0000

Add README file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../perl/libxml-parser-perl_2.36.bb                |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
index 8188405..b9ebd7f 100644
--- a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
+++ b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
@@ -1,5 +1,6 @@
 SECTION = "libs"
 LICENSE = "Artistic"
+LIC_FILES_CHKSUM = "file://README;endline=6;md5=fa7bbbd54d37d6ecf4ef33b7c98b9cd7"
 DEPENDS += "expat expat-native"
 
 SRC_URI = "http://www.cpan.org/modules/by-module/XML/XML-Parser-${PV}.tar.gz"
-- 
1.6.3.3


