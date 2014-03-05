Return-Path: <valentin.popa@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7158CE0078E
	for <poky@yoctoproject.org>; Wed,  5 Mar 2014 06:46:46 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 05 Mar 2014 06:46:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486483822"
Received: from vpopa-desktop.rb.intel.com ([10.237.105.47])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 06:46:44 -0800
From: Valentin Popa <valentin.popa@intel.com>
To: poky@yoctoproject.org
Date: Wed,  5 Mar 2014 16:46:33 +0200
Message-Id: <1394030793-14474-1-git-send-email-valentin.popa@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] gnutls: update regex
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
X-List-Received-Date: Wed, 05 Mar 2014 14:46:46 -0000

update regex for gnutls

Signed-off-by: Valentin Popa <valentin.popa@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 23a25c6..b360f8f 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -81,7 +81,8 @@ REGEX_URI_pn-gcc-crosssdk = "ftp://ftp.gnu.org/gnu/gcc/"
 REGEX_pn-gcc-crosssdk = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-glew = "http://sourceforge.net/projects/glew/files/glew"
 REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\.\-_]*)+))/\""
-#REGEX_pn-gnutls = "ftp://ftp.gnutls.org/gcrypt/gnutls/"
+REGEX_URI_pn-gnutls = "ftp://ftp.gnutls.org/gcrypt/gnutls/stable"
+REGEX_pn-gnutls = "[hH][rR][eE][fF]=\"gnutls\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.(xz|lz)\""
 REGEX_pn-gstreamer = "[hH][rR][eE][fF]=\"gstreamer\-(?P<pver>(0\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
 REGEX_pn-gstreamer1.0 = "[hH][rR][eE][fF]=\"gstreamer\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
 REGEX_pn-gst-ffmpeg = "[hH][rR][eE][fF]=\"gst-ffmpeg\-(?P<pver>(\d+\.\d*[0|2|4|6|8]\.\d+))\.tar\.(gz|xz|bz2)\""
-- 
1.8.3.2


