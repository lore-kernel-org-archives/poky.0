Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB5144C80B70
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 12:36:12 -0600 (CST)
Received: by wwb31 with SMTP id 31so16583765wwb.11
	for <poky@yoctoproject.org>; Mon, 03 Jan 2011 10:36:11 -0800 (PST)
Received: by 10.216.187.7 with SMTP id x7mr4247568wem.38.1294079771583;
	Mon, 03 Jan 2011 10:36:11 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id i80sm10031481wej.28.2011.01.03.10.36.10
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 03 Jan 2011 10:36:11 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Mon,  3 Jan 2011 19:36:07 +0100
Message-Id: <1294079767-5931-1-git-send-email-koen@openembedded.org>
X-Mailer: git-send-email 1.7.0
Subject: [PATCH] sstate.bbclass: fix multimachine builds when PACKAGE_ARCH = MACHINE_ARCH
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
X-List-Received-Date: Mon, 03 Jan 2011 18:36:13 -0000

From: Koen Kooi <koen@dominion.thruhere.net>

previously you could only build one set of packages for multiple machines:

MACHINE=foo bitbake task-base
MACHINE=bar bitbake task-base

would only create task-base packages for foo, but not for both foo and bar.
Doing MACHINE=bar bitbake task-base -c cleanall would remove the packages for foo.

The solution is to use MULTIMACH_ARCH as suggested by Richard Purdie.

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/sstate.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 0ba130c..b6e6c92 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -5,7 +5,7 @@ SSTATE_MANFILEBASE = "${SSTATE_MANIFESTS}/manifest-${SSTATE_PKGARCH}-"
 SSTATE_MANFILEPREFIX = "${SSTATE_MANFILEBASE}${PN}"
 
 
-SSTATE_PKGARCH    = "${BASE_PACKAGE_ARCH}"
+SSTATE_PKGARCH    = "${MULTIMACH_ARCH}"
 SSTATE_PKGSPEC    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-"
 SSTATE_PKGNAME    = "${SSTATE_PKGSPEC}${BB_TASKHASH}"
 SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
-- 
1.6.6.1


