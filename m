Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3091E4C80050
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 14:10:47 -0600 (CST)
Received: by wwb31 with SMTP id 31so2246218wwb.11
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:10:46 -0800 (PST)
Received: by 10.227.146.138 with SMTP id h10mr2750823wbv.189.1294949446451;
	Thu, 13 Jan 2011 12:10:46 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id j49sm254330wer.38.2011.01.13.12.10.45
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 13 Jan 2011 12:10:45 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Thu, 13 Jan 2011 21:10:41 +0100
Message-Id: <1294949441-22468-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] distutils-base bbclass: fix RDEPENDS assignment to only apply to target ${PN}
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
X-List-Received-Date: Thu, 13 Jan 2011 20:10:49 -0000

When using BBCLASSEXTEND = "native" the recipe gets a spurious dependency on python-core-native, which doesn't exist

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/distutils-base.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/distutils-base.bbclass b/meta/classes/distutils-base.bbclass
index 2e151de..04c117b 100644
--- a/meta/classes/distutils-base.bbclass
+++ b/meta/classes/distutils-base.bbclass
@@ -1,5 +1,5 @@
 DEPENDS  += "${@["python-native python", ""][(bb.data.getVar('PACKAGES', d, 1) == '')]}"
-RDEPENDS += "python-core"
+RDEPENDS_${PN} += "${@["python-core", ""][(bb.data.getVar('PACKAGES', d, 1) == '')]}"
 
 inherit distutils-common-base
 
-- 
1.6.6.1


