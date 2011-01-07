Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F333E4C80B70
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 10:44:40 -0600 (CST)
Received: by wye20 with SMTP id 20so18565848wye.35
	for <poky@yoctoproject.org>; Fri, 07 Jan 2011 08:44:36 -0800 (PST)
Received: by 10.227.143.194 with SMTP id w2mr15728119wbu.44.1294418169070;
	Fri, 07 Jan 2011 08:36:09 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id o33sm12514384wej.13.2011.01.07.08.36.08
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 07 Jan 2011 08:36:08 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Fri,  7 Jan 2011 17:36:04 +0100
Message-Id: <1294418164-5124-1-git-send-email-koen@openembedded.org>
X-Mailer: git-send-email 1.7.0
Subject: [PATCH] wpa-supplicant 0.7: fix GNU HASH QA issue
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
X-List-Received-Date: Fri, 07 Jan 2011 16:44:41 -0000

From: Koen Kooi <koen@dominion.thruhere.net>

The recipe was unsetting LDFLAGS, resulting in:

NOTE: QA Issue: No GNU_HASH in the elf binary: '/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/wpa-supplicant-0.7.3-r0/packages-split/wpa-supplicant/usr/sbin/wpa_supplicant'

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 .../wpa-supplicant/wpa-supplicant-0.7.inc          |    2 +-
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
index 78ce914..6eda3b1 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
@@ -29,7 +29,7 @@ do_configure () {
 
 export EXTRA_CFLAGS = "${CFLAGS}"
 do_compile () {
-	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
+	unset CFLAGS CPPFLAGS CXXFLAGS
 	oe_runmake
 }
 
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
index 2d7729c..e4ae019 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
@@ -1,6 +1,6 @@
 require wpa-supplicant-0.7.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI[md5sum] = "f516f191384a9a546e3f5145c08addda"
 SRC_URI[sha256sum] = "d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
-- 
1.6.6.1


