Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38352E00300
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960384"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:16 -0700
Message-Id: <7779a1fedcaa9e0797893d00cff036ecd8823be0.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 04/17] Magic file path should be given for rpmbuild
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

From: "jani.uusi-rantala@nokia.com" <jani.uusi-rantala@nokia.com>

Magic file path should be given for rpmbuild in
_rpmfc_magic_path define so that build system default file
is not used by accident. Not doing this caused many
packages to fail building in several systems.

Fixes [YOCTO #1358]

Signed-off-by: Jani Uusi-Rantala <jani.uusi-rantala@nokia.com>
---
 meta/classes/package_rpm.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 70170d1..4f300f8 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -763,6 +763,7 @@ python do_package_rpm () {
 	targetsys = bb.data.getVar('TARGET_SYS', d, True)
 	pkgwritedir = bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}', d)
 	pkgarch = bb.data.expand('${PACKAGE_ARCH}', d)
+	magicfile = bb.data.expand('${STAGING_DIR_NATIVE}/usr/share/misc/magic.mgc', d)
 	bb.mkdirhier(pkgwritedir)
 	os.chmod(pkgwritedir, 0755)
 
@@ -775,6 +776,7 @@ python do_package_rpm () {
 	cmd = cmd + " --define '__find_provides " + outprovides + "'"
 	cmd = cmd + " --define '_unpackaged_files_terminate_build 0'"
 	cmd = cmd + " --define 'debug_package %{nil}'"
+	cmd = cmd + " --define '_rpmfc_magic_path " + magicfile + "'"
 	cmd = cmd + " -bb " + outspecfile
 
 	# Build the rpm package!
-- 
1.7.7


