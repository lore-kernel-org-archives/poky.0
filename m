Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97F1E4C80861
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 18:03:34 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2B03Y6C021573
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 16:03:34 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 10 Mar 2011 16:03:33 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@lists.pokylinux.org>
Date: Thu, 10 Mar 2011 18:03:53 -0600
Message-ID: <3bde974074b2a4d31cbb8afae9e93372dd70fe13.1299801529.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1299801529.git.mark.hatle@windriver.com>
References: <cover.1299801529.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 3/4] package_rpm: Fix rootfs generation
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
X-List-Received-Date: Fri, 11 Mar 2011 00:03:34 -0000
Content-Type: text/plain

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
1.7.3.4


