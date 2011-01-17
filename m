Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B4E14C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:54:21 -0600 (CST)
Received: by wye20 with SMTP id 20so5407306wye.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:54:20 -0800 (PST)
Received: by 10.227.183.203 with SMTP id ch11mr4172946wbb.214.1295279660792;
	Mon, 17 Jan 2011 07:54:20 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id q18sm3434863wbe.23.2011.01.17.07.54.19
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 07:54:20 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Mon, 17 Jan 2011 16:53:22 +0100
Message-Id: <1295279606-19767-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH 1/5] distutils-base bbclass: fix RDEPENDS assignment to only apply to target ${PN}
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
X-List-Received-Date: Mon, 17 Jan 2011 15:54:22 -0000

When using BBCLASSEXTEND = "native" the recipe gets a spurious dependency on python-core-native, which doesn't exist

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/distutils-base.bbclass |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/classes/distutils-base.bbclass b/meta/classes/distutils-base.bbclass
index 2e151de..4d5de24 100644
--- a/meta/classes/distutils-base.bbclass
+++ b/meta/classes/distutils-base.bbclass
@@ -1,5 +1,4 @@
 DEPENDS  += "${@["python-native python", ""][(bb.data.getVar('PACKAGES', d, 1) == '')]}"
-RDEPENDS += "python-core"
+RDEPENDS_${PN} += "${@['', 'python-core']['${PN}' == '${BPN}']}"
 
 inherit distutils-common-base
-
-- 
1.6.6.1


