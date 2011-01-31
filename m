Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C25064C81175
	for <poky@pokylinux.org>; Mon, 31 Jan 2011 00:44:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 22:44:38 -0800
Message-Id: <0d30dc$ktnruc@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="702279633"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 22:44:14 -0800
Old-Date: Mon, 31 Jan 2011 14:05:48 +0800
Date: Mon, 31 Jan 2011 14:25:33 +0800
To: poky@pokylinux.org
From: Kevin Tian <kevin.tian@intel.com>
Subject: [PATCH 1/1] license.bbclass: don't mark it as 'nostamp'
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
X-List-Received-Date: Mon, 31 Jan 2011 06:44:38 -0000

From: Kevin Tian <kevin.tian@intel.com>

'nostamp' is normally used for some standalone tasks like clean, checkuri, etc.
It doesn't make sense to mark do_populate_lic as 'nostamp', which is depended
by do_package. No stamp file in the build dependency chain implicates that
do_package needs to be reinvoked and thus further do_package_write* stuff.

This together with another sstate bug fully confused recent master, that people
keep observing unnecessary do_package rebuilt with or without change. Below is
a short explanation for two behaviors we observed:

a) a fresh build, and then bitbake same target w/o any change. User will observe
one unnecessary rebuild and then later rebuild is fine:
    [1st rebuild]
    * do_populate_lic has no stamp, and thus do_package is thought not current
    * do_package_setscene is then invoked with stamp file created
    * then later do_package_write*** also are rebuilt
    [2nd and later rebuild]
    * do_populate_lic has no stamp, and thus do_package is thought not current
    * do_package_setscene has stamp file and thus no need to re-execute setscene
    * thus no further rebuild required

b) a fresh build, and then adjust order of PACKAGE_CLASSES. There's one bug
regarding to PACKAGE_CLASSES and do_package_setscene, that only switch the
order in PACKAGE_CLASSES generates different checksum. In this case user may
observe up to 3 rebuilds when switching package_rpm/package_ipk back and forth.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/classes/license.bbclass |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index ddedd57..2058406 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -11,7 +11,6 @@
 LICENSE_DIRECTORY ??= "${DEPLOY_DIR_IMAGE}/licenses"
 
 addtask populate_lic after do_patch before do_package 
-do_populate_lic[nostamp] = "1"
 python do_populate_lic() {
     """
     Populate LICENSE_DIRECTORY with licenses.
-- 
1.6.0.4


