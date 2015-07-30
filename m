Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 536F1E00ABE; Thu, 30 Jul 2015 06:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F97DE009A7
	for <poky@yoctoproject.org>; Thu, 30 Jul 2015 06:59:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2015 06:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,577,1432623600"; d="scan'208";a="758423309"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.143])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2015 06:59:25 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 30 Jul 2015 17:00:18 +0300
Message-Id: <898f8e253b994c704061046e3197d68cfffef138.1438263355.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
References: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
In-Reply-To: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
References: <cover.1438263355.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 3/3] upstream_tracking.inc: remove outdated information
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
X-List-Received-Date: Thu, 30 Jul 2015 13:59:27 -0000

Most of the "no update reasons" no longer apply because
the package has actually been updated long time ago, or
the problem was in fact an incorrect upstream version check
that can be fixed by tweaking REGEX_URI/REGEX pair.

Also, only unfs3 is anymore taken from svn, so every other
recipe for which upstream version is checked manually can be dropped.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      | 44 +++-------------------
 1 file changed, 5 insertions(+), 39 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 96ca06c..554f872 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -22,49 +22,15 @@
 #
 
 # SVN support isn't implemented
-RECIPE_UPSTREAM_VERSION_pn-tremor="20120314"
-RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
-CHECK_DATE_pn-tremor = "Mar 11, 2013"
-RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
-
-RECIPE_UPSTREAM_VERSION_pn-puzzles="r10286"
-RECIPE_UPSTREAM_DATE_pn-puzzles="Oct 20, 2014"
-CHECK_DATE_pn-puzzles = "Dec 18, 2014"
-
-RECIPE_UPSTREAM_VERSION_pn-unfs3="0.9.22.r494"
-RECIPE_UPSTREAM_DATE_pn-unfs3="Mar 14, 2014"
-CHECK_DATE_pn-unfs3 = "Dec 18, 2014"
-
-RECIPE_UPSTREAM_VERSION_pn-lz4 = "r123"
-RECIPE_UPSTREAM_DATE_pn-lz4 = "Aug 28, 2014"
-CHECK_DATE_pn-lz4 = "Aug 30, 2014"
-
-# GIT don't have tag
-RECIPE_UPSTREAM_VERSION_pn-x264 = "r2491"
-RECIPE_UPSTREAM_DATE_pn-x264 = "Nov 13, 2014"
-CHECK_DATE_pn-x264 = "Dec 17, 2014"
-
-# Yocto project software
-RECIPE_UPSTREAM_VERSION_pn-pseudo = "1.6.4"
-RECIPE_UPSTREAM_DATE_pn-pseudo = "Jan 23, 2015"
-CHECK_DATE_pseudo = "Feb 12, 2015"
+# Also a new tarball release (or SVN tag) hasn't happened in a long time
+RECIPE_UPSTREAM_VERSION_pn-unfs3="0.9.22.r495"
+RECIPE_UPSTREAM_DATE_pn-unfs3="Feb 05, 2015"
+CHECK_DATE_pn-unfs3 = "Jun 10, 2015"
 
 # NO UPDATE REASONS
-RECIPE_NO_UPDATE_REASON_pn-build-appliance = "Always reports behind"
-RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
-RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
-RECIPE_NO_UPDATE_REASON_pn-groff = "1.18.1.4 is latest GPLv2 Version no 1.21"
-RECIPE_NO_UPDATE_REASON_pn-bash = "The latest version in yocto is 4.3.30"
 RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
-RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
-RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.00.0 - fontforge package required "
-RECIPE_NO_UPDATE_REASON_pn-nettle = "3.0.0 breaks gnutls, api changes"
+RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.x depends on fontforge package, which is not yet provided in oe-core"
 RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends"
-RECIPE_NO_UPDATE_REASON_pn-python-distribute = "0.7.3 only upgrades 0.6.32, can't install on its own, also obsolete"
 RECIPE_NO_UPDATE_REASON_pn-python-pygobject = "Newer versions of python-pygobject depend on gobject-introspection which doesn't cross-compile"
-RECIPE_NO_UPDATE_REASON_pn-syslinux="Waiting for 4.06 for 3.3 kernel headers support"
-RECIPE_NO_UPDATE_REASON_pn-texinfo = "Checking script parses directory wrong"
 RECIPE_NO_UPDATE_REASON_pn-webkit-gtk = ">= 1.10.2 needs ruby"
-RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
-RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
-- 
2.1.4


