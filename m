Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2765D4C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 07:36:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="861641940"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2010 07:36:02 -0800
Message-Id: <995fbfcc4ee294faf610936141ff39e915cfc0cd.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 19:03:53 +0800
To: poky@yoctoproject.org
Subject: [PATCH 10/14] libtimedate-perl:Add license checksum and update the GPL information
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
X-List-Received-Date: Fri, 26 Nov 2010 15:36:03 -0000

Add README file checksum to bb file and update the "GPL" to "GPLv1+" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../recipes-extended/perl/libtimedate-perl_1.20.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/perl/libtimedate-perl_1.20.bb b/meta/recipes-extended/perl/libtimedate-perl_1.20.bb
index 84406ad..7298f37 100644
--- a/meta/recipes-extended/perl/libtimedate-perl_1.20.bb
+++ b/meta/recipes-extended/perl/libtimedate-perl_1.20.bb
@@ -1,7 +1,8 @@
 DESCRIPTION = "TimeDate - parser for absolute times"
 SECTION = "libs"
 # You can redistribute it and/or modify it under the same terms as Perl itself.
-LICENSE = "Artistic|GPL"
+LICENSE = "Artistic|GPLv1+"
+LIC_FILES_CHKSUM = "file://README;beginline=21;md5=576b7cb41e5e821501a01ed66f0f9d9e"
 PR = "r2"
 
 
-- 
1.6.3.3


