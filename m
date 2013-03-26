Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E18E013D9
	for <poky@yoctoproject.org>; Tue, 26 Mar 2013 06:45:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Mar 2013 06:45:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,911,1355126400"; d="scan'208";a="276125085"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.141])
	by azsmga001.ch.intel.com with ESMTP; 26 Mar 2013 06:44:48 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 Mar 2013 15:50:00 +0200
Message-Id: <1364305800-22384-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Added regex for gtk-update-icon-cache-native
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
X-List-Received-Date: Tue, 26 Mar 2013 13:45:10 -0000

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index e313729..882c13c 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -257,6 +257,7 @@ REGEX_pn-libffi-native = "[hH][rR][eE][fF]=\"ftp://sourceware.org:21/pub/libffi/
 REGEX_pn-nativesdk-libffi = "[hH][rR][eE][fF]=\"ftp://sourceware.org:21/pub/libffi/libffi\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-gtk+ = "[hH][rR][eE][fF]=\"gtk\+\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_pn-gtk+3 = "[hH][rR][eE][fF]=\"gtk\+\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
+REGEX_pn-gtk-update-icon-cache-native = "[hH][rR][eE][fF]=\"gtk\+\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_pn-webkit-gtk = "[hH][rR][eE][fF]=\"webkitgtk\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_URI_pn-bind = "ftp://ftp.isc.org/isc/bind9/"
 REGEX_pn-bind = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/bind9/(?P<pver>((P?\d+[\.\-_]*)+))/\""
-- 
1.7.9.5


