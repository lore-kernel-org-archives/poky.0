Return-Path: <aalonso@secretlab.ca>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B9F434C800D7
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:11:13 -0500 (CDT)
Received: by mail-yx0-f176.google.com with SMTP id 5so1263619yxd.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:11:13 -0700 (PDT)
Received: by 10.236.76.70 with SMTP id a46mr3632037yhe.339.1304622673515;
	Thu, 05 May 2011 12:11:13 -0700 (PDT)
Received: from localhost.localdomain ([99.66.253.228])
	by mx.google.com with ESMTPS id 7sm1134176yhl.19.2011.05.05.12.11.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:11:12 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:11:11 -0500
Message-Id: <7577bb0da8badabce577bf8ebd453e6fa7f3bd50.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 6/7] package_rpm: use target vendor information
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
X-List-Received-Date: Thu, 05 May 2011 19:11:13 -0000

* Instead of hardcoding target vendor string "-poky"
  use TARGET_VENDOR information in case of using external
  toolchains

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/classes/package_rpm.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 70170d1..1cf9f79 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -761,13 +761,14 @@ python do_package_rpm () {
 	# Setup the rpmbuild arguments...
 	rpmbuild = bb.data.getVar('RPMBUILD', d, True)
 	targetsys = bb.data.getVar('TARGET_SYS', d, True)
+	targetvendor = bb.data.getVar('TARGET_VENDOR', d, True)
 	pkgwritedir = bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}', d)
 	pkgarch = bb.data.expand('${PACKAGE_ARCH}', d)
 	bb.mkdirhier(pkgwritedir)
 	os.chmod(pkgwritedir, 0755)
 
 	cmd = rpmbuild
-	cmd = cmd + " --nodeps --short-circuit --target " + pkgarch + "-poky-linux-gnu --buildroot " + pkgd
+	cmd = cmd + " --nodeps --short-circuit --target " + pkgarch + targetvendor + "-linux-gnu --buildroot " + pkgd
 	cmd = cmd + " --define '_topdir " + workdir + "' --define '_rpmdir " + pkgwritedir + "'"
 	cmd = cmd + " --define '_build_name_fmt %%{NAME}-%%{VERSION}-%%{RELEASE}.%%{ARCH}.rpm'"
 	cmd = cmd + " --define '_use_internal_dependency_generator 0'"
-- 
1.7.4.4


