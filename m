Return-Path: <cristiana.voicu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAF53E01575
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:40:43 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Aug 2013 05:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,885,1367996400"; d="scan'208";a="346774512"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.72])
	by azsmga001.ch.intel.com with ESMTP; 15 Aug 2013 05:40:38 -0700
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 15 Aug 2013 15:43:41 +0300
Message-Id: <1376570621-31102-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] package_regex.inc: Add regex for atk
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
X-List-Received-Date: Thu, 15 Aug 2013 12:40:44 -0000

This is GNOME, 2.[odd] are development releases.

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index b03601d..e271cd8 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -18,6 +18,7 @@ COMMON_REGEX = "((\d+[\.\-_]*)+)"
 #This will need to be changed a little bit when versions are bigger than 9.
 REGEX_URI_pn-acpid = "http://sourceforge.net/projects/acpid/files/acpid/"
 REGEX_pn-acpid = "[hH][rR][eE][fF]=\"/projects/acpid/files/acpid/(acpid\-)?(?P<pver>(\d\.(\d+[\.\-_]*)+))/\""
+REGEX_pn-atk = "[hH][rR][eE][fF]=\"atk\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
 REGEX_URI_pn-beecrypt = "http://sourceforge.net/projects/beecrypt/files/beecrypt/"
 REGEX_pn-beecrypt = "[hH][rR][eE][fF]=\"/projects/beecrypt/files/beecrypt/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-beecrypt-native = "http://sourceforge.net/projects/beecrypt/files/beecrypt/"
-- 
1.7.9.5


