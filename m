Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF2A5E003BC
	for <poky@yoctoproject.org>; Thu, 14 Feb 2013 07:47:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2013 07:47:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,665,1355126400"; d="scan'208";a="287250494"
Received: from ema-vostro-460 (HELO localhost.localdomain) ([10.237.105.41])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2013 07:47:13 -0800
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Feb 2013 17:51:40 +0200
Message-Id: <1360857100-17440-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 2/2] Solved package namespace errors in PRS
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
X-List-Received-Date: Thu, 14 Feb 2013 15:47:31 -0000

Removed some beta versioning the system reported
for the socat package and the development version
reported by PRS for foomatic-filters.

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 43b5518..510f3f9 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -65,7 +65,7 @@ REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\
 REGEX_URI_pn-hdparm = "http://sourceforge.net/projects/hdparm/files/hdparm/"
 REGEX_pn-hdparm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/hdparm/files/hdparm/hdparm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_URI_pn-icu = "http://site.icu-project.org/download"
-REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.\-_]*)+)#(TOC\-)?ICU4J\-Download\" rel=\"nofollow\">(<b>)?(?P<pver>((\d+[\.\-_]*)+))(</b>)?"
+REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.\-_]*)+)#(TOC\-)?ICU4C\-Download\" rel=\"nofollow\">(<b>)?(?P<pver>((\d+[\.\-_]*)+))(</b>)?"
 REGEX_URI_pn-irda-utils = "http://sourceforge.net/projects/irda/files/irda-utils/"
 REGEX_pn-irda-utils = "[hH][rR][eE][fF]=\"/projects/irda/files/irda-utils/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-jpeg = "http://www.ijg.org/files/"
@@ -178,7 +178,7 @@ REGEX_pn-setserial = "[hH][rR][eE][fF]=\"/projects/setserial/files/setserial/(?P
 REGEX_pn-shared-mime-info = "[hH][rR][eE][fF]=\"shared\-mime\-info\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.(bz2|gz|xz)\""
 REGEX_pn-shared-mime-info-native = "[hH][rR][eE][fF]=\"shared\-mime\-info\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.(bz2|gz|xz)\""
 REGEX_URI_pn-socat = "http://www.dest-unreach.org/socat/download/"
-REGEX_pn-socat = "[hH][rR][eE][fF]=\"socat\-(?P<pver>(([a-zA-Z]?\d+[\.\-]*)+))\.tar\.bz2\""
+REGEX_pn-socat = "[hH][rR][eE][fF]=\"socat\-(?P<pver>((\d+[\.\-]*)+))\.tar\.bz2\""
 REGEX_URI_pn-speex = "http://downloads.us.xiph.org/releases/speex/"
 REGEX_pn-speex = "[hH][rR][eE][fF]=\"speex\-(?P<pver>((\d+\.*)+))\.tar\.gz\""
 REGEX_URI_pn-sqlite3 = "http://www.sqlite.org/download.html"
-- 
1.7.9.5


