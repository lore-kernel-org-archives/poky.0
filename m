Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA09EE01481
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 06:08:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Mar 2013 06:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,919,1355126400"; d="scan'208";a="312622798"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.32])
	by fmsmga002.fm.intel.com with ESMTP; 27 Mar 2013 06:08:11 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Mar 2013 15:13:25 +0200
Message-Id: <1364390005-6982-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] package_regex.inc: Added regex for elfutils
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Mar 2013 13:08:40 -0000

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 882c13c..aff4bdd 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -48,6 +48,7 @@ REGEX_URI_pn-nativesdk-db = "http://www.oracle.com/technetwork/products/berkeley
 REGEX_pn-nativesdk-db = "[hH][rR][eE][fF]=\"http://download.oracle.com/otn/berkeley-db/db-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-e2fsprogs = "http://sourceforge.net/projects/e2fsprogs/files/e2fsprogs/"
 REGEX_pn-e2fsprogs = "[hH][rR][eE][fF]=\"/projects/e2fsprogs/files/e2fsprogs/v(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_pn-elfutils = "[hH][rR][eE][fF]=\"(elfutils\-)?(?P<pver>((\d+[\.\-_]*)+))(/|\.tar\.bz2)\""
 REGEX_URI_pn-expat = "http://sourceforge.net/projects/expat/files/expat/"
 REGEX_pn-expat-native = "[hH][rR][eE][fF]=\"/projects/expat/files/expat/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-expat-native = "http://sourceforge.net/projects/expat/files/expat/"
-- 
1.7.9.5


