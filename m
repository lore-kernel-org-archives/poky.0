Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6DEE4C80335
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 05:53:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Feb 2011 03:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,211,1297065600"; d="scan'208";a="660634450"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2011 03:53:12 -0800
Message-Id: <0dbcf55ca9ca4f8d68cd6cac546ada16f3e8b8a1.1298461187.git.lei.mei@intel.com>
In-Reply-To: <cover.1298461187.git.lei.mei@intel.com>
References: <cover.1298461187.git.lei.mei@intel.com>
Old-Date: Wed, 23 Feb 2011 19:35:04 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] distrodata.bbclass: Fix some issues when checking upstream version on sourceforge
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
Date: Wed, 23 Feb 2011 11:53:14 -0000
X-Original-Date: 三, 23  2月 2011 19:52:29 +0800
X-List-Received-Date: Wed, 23 Feb 2011 11:53:14 -0000

From: Mei Lei <lei.mei@intel.com>

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 049ebf9..d84b306 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -368,7 +368,6 @@ python do_checkpkg() {
 			for line in fhtml.split("\n"):
 				if line.find(curver) >= 0:
 					valid = 1
-
 				m = reg.search(line)
 				if m:
 					ver = m.group().split("\"")[1]
@@ -416,7 +415,7 @@ python do_checkpkg() {
 			pn1 = re.search("^%s" % prefix, curname).group()
 			
 			s = "[^\"]*%s[^\d\"]*?(\d+[\.\-_])+[^\"]*" % pn1
-			searchstr = "[hH][rR][eE][fF]=\"%s\".*>" % s
+			searchstr = "[hH][rR][eE][fF]=\"%s\".*[>\"]" % s
 			reg = re.compile(searchstr)
 	
 			valid = 0
@@ -425,6 +424,8 @@ python do_checkpkg() {
 				if m:
 					valid = 1
 					ver = m.group().split("\"")[1].split("/")[-1]
+					if ver == "download":
+						ver = m.group().split("\"")[1].split("/")[-2]
 					ver = parse_dir(ver)
 					if ver and __vercmp(newver, ver) < 0:
 						newver = ver
@@ -434,7 +435,7 @@ python do_checkpkg() {
 				status = "ErrParseDir"
 			else:
 				"""newver still contains a full package name string"""
-				status = re.search("(\d+[.\-_])*[0-9a-zA-Z]+", newver[1]).group()
+				status = re.search("(\d+[\.\-_])*(\d+[0-9a-zA-Z]*)", newver[1]).group()
 		elif not len(fhtml):
 			status = "ErrHostNoDir"
 
-- 
1.6.3.3


