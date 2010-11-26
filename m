Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 443AB4C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:23 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 07:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630559081"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 07:36:03 -0800
Message-Id: <3a0a74735d9bc9d18c0a647cabd58ec77a976561.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 19:07:11 +0800
To: poky@yoctoproject.org
Subject: [PATCH 11/14] libconvert-ans1-perl:Add license checksum and update the GPL information
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

Add README file checksum to bb file and update the "GPL" to "GPLv1+" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../perl/libconvert-asn1-perl_0.21.bb              |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb b/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb
index 3292ee3..6f6e75c 100644
--- a/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb
+++ b/meta/recipes-extended/perl/libconvert-asn1-perl_0.21.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Convert::ASN1 - ASN.1 Encode/Decode library"
 SECTION = "libs"
-LICENSE = "Artistic|GPL"
+LICENSE = "Artistic|GPLv1+"
+LIC_FILES_CHKSUM = "file://README;beginline=10;endline=12;md5=a64b291b13ffddeef33b14f047ee8b26"
 PR = "r0"
 
 SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert-ASN1-${PV}.tar.gz"
-- 
1.6.3.3


