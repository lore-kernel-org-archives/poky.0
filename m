Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A81484C80A8D
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 00:40:27 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Feb 2011 22:40:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,198,1297065600"; d="scan'208";a="889609818"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2011 22:40:26 -0800
Message-Id: <3a0a69b6a1d23693308cdfc4372bd1ce3cf92d25.1298270198.git.lei.mei@intel.com>
In-Reply-To: <cover.1298270198.git.lei.mei@intel.com>
References: <cover.1298270198.git.lei.mei@intel.com>
Old-Date: Mon, 21 Feb 2011 14:34:19 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] distrodata.bbclass: Fix some bugs for rpm, icu and quicky recipe when checking upstream version
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
Date: Mon, 21 Feb 2011 06:40:27 -0000
X-Original-Date: 一, 21  2月 2011 14:39:26 +0800
X-List-Received-Date: Mon, 21 Feb 2011 06:40:27 -0000

From: Mei Lei <lei.mei@intel.com>

Fix some bugs in checkpkg function when checking upstream version

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 31e7420..049ebf9 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -1,4 +1,3 @@
-
 require conf/distro/include/distro_tracking_fields.inc
 
 addhandler distro_eventhandler
@@ -263,9 +262,10 @@ python do_checkpkg() {
 	"""
 	prefix1 = "[a-zA-Z][a-zA-Z0-9]*([\-_][a-zA-Z]\w+)*[\-_]"	# match most patterns which uses "-" as separator to version digits
 	prefix2 = "[a-zA-Z]+"			# a loose pattern such as for unzip552.tar.gz
-	prefix = "(%s|%s)" % (prefix1, prefix2)
-	suffix = "(tar\.gz|tgz|tar\.bz2|zip|xz)"
-	suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz")
+	prefix3 = "[0-9a-zA-Z]+"			# a loose pattern such as for 80325-quicky-0.4.tar.gz
+	prefix = "(%s|%s|%s)" % (prefix1, prefix2, prefix3)
+	suffix = "(tar\.gz|tgz|tar\.bz2|zip|xz|rpm)"
+	suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "src.rpm")
 
 	sinterstr = "(?P<name>%s?)(?P<ver>.*)" % prefix
 	sdirstr = "(?P<name>%s)(?P<ver>.*)\.(?P<type>%s$)" % (prefix, suffix)
@@ -294,9 +294,8 @@ python do_checkpkg() {
 		(en, ev, et) = new
 		if on != en or (et and et not in suffixtuple):
 			return 0
-
-		ov = re.search("\d+[^a-zA-Z]+", ov).group()
-		ev = re.search("\d+[^a-zA-Z]+", ev).group()
+		ov = re.search("[\d|\.]+[^a-zA-Z]+", ov).group()
+		ev = re.search("[\d|\.]+[^a-zA-Z]+", ev).group()
 		return bb.utils.vercmp(("0", ov, ""), ("0", ev, ""))
 
 	"""
@@ -415,6 +414,7 @@ python do_checkpkg() {
 
 			"""match "{PN}-5.21.1.tar.gz">{PN}-5.21.1.tar.gz """
 			pn1 = re.search("^%s" % prefix, curname).group()
+			
 			s = "[^\"]*%s[^\d\"]*?(\d+[\.\-_])+[^\"]*" % pn1
 			searchstr = "[hH][rR][eE][fF]=\"%s\".*>" % s
 			reg = re.compile(searchstr)
-- 
1.6.3.3


