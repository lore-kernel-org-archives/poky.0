Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 092884C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 04:59:29 -0600 (CST)
Received: by wye20 with SMTP id 20so26893wye.35
	for <poky@yoctoproject.org>; Wed, 09 Feb 2011 02:59:29 -0800 (PST)
Received: by 10.216.81.69 with SMTP id l47mr17128441wee.56.1297249169049;
	Wed, 09 Feb 2011 02:59:29 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r57sm104699wes.25.2011.02.09.02.59.28
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 09 Feb 2011 02:59:28 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 11:58:02 +0100
Message-Id: <1297249082-25551-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] bitbake.conf: fix SDK_NAME
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
X-List-Received-Date: Wed, 09 Feb 2011 10:59:30 -0000

It was using a '/' in a name variable, subtly breaking things like this:

populate_sdk.bbclass:
   mkdir -p ${SDK_DEPLOY}
   cd ${SDK_OUTPUT}
   tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .

Tar will error out since SDK_DEPLOY/DISTRO/ doesn't exist. Change the default to be more like the one from poky.conf, without the poky specific POKYLIBC.

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/conf/bitbake.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 7368097..da50fe5 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -321,7 +321,7 @@ DEPLOY_DIR_TOOLS = "${DEPLOY_DIR}/tools"
 
 PKGDATA_DIR = "${TMPDIR}/pkgdata/${MULTIMACH_TARGET_SYS}"
 
-SDK_NAME = "${DISTRO}/${TARGET_ARCH}"
+SDK_NAME = "${DISTRO}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/usr/local/${SDK_NAME}"
 SDKPATHNATIVE = "${SDKPATH}/sysroots/${SDK_SYS}"
 
-- 
1.6.6.1


