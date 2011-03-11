Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B11834C80AA4
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:20:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Mar 2011 18:20:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="400968772"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by azsmga001.ch.intel.com with ESMTP; 10 Mar 2011 18:20:18 -0800
Message-Id: <1d5ca654a482f582c75faf546140dfd6064da73b.1299809859.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299809859.git.sgw@linux.intel.com>
References: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 11:58:15 -0600
Date: Thu, 10 Mar 2011 18:20:17 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 04/12] package_rpm: Fix rootfs generation
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
X-List-Received-Date: Fri, 11 Mar 2011 02:20:34 -0000

From: Mark Hatle <mark.hatle@windriver.com>

[YOCTO #797]

During rootfs generation, if other RPM packages are being wrtten
this could cause a failure during the solvedb generation.  We
add a shared lock around the RPM package building.  This will allow
multiple RPM packages to continue to be written at the same time, but
prevent rootfs generation and RPM package generation at the same time.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package_rpm.bbclass |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 60127d2..4647116 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -777,10 +777,16 @@ python do_package_rpm () {
 	cmd = cmd + " --define 'debug_package %{nil}'"
 	cmd = cmd + " -bb " + outspecfile
 
-	# Build the spec file!
+	# Take a shared lock, we can write multiple packages at the same time...
+	# but we need to stop the rootfs/solver from running while we do...
+	lf = bb.utils.lockfile(bb.data.expand("${DEPLOY_DIR_RPM}/rpm.lock", d), True)
+
+	# Build the rpm package!
 	bb.data.setVar('BUILDSPEC', cmd + "\n", d)
 	bb.data.setVarFlag('BUILDSPEC', 'func', '1', d)
 	bb.build.exec_func('BUILDSPEC', d)
+
+	bb.utils.unlockfile(lf)
 }
 
 python () {
-- 
1.7.1.1


