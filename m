Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 030B54C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 03:23:47 -0600 (CST)
Received: by wwb31 with SMTP id 31so999579wwb.11
	for <poky@yoctoproject.org>; Thu, 03 Feb 2011 01:23:46 -0800 (PST)
Received: by 10.216.35.74 with SMTP id t52mr9237713wea.103.1296725026574;
	Thu, 03 Feb 2011 01:23:46 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id t11sm316443wes.41.2011.02.03.01.23.45
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 03 Feb 2011 01:23:45 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 10:20:43 +0100
Message-Id: <1296724843-6338-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] wpa-supplicant 0.7.3: fix packaging of dbus service files and fix layout variables
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
X-List-Received-Date: Thu, 03 Feb 2011 09:23:48 -0000

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 .../wpa-supplicant/wpa-supplicant-0.7.inc          |    5 +++--
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
index c91af45..7865b8f 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
@@ -20,8 +20,9 @@ SRC_URI = "http://hostap.epitest.fi/releases/wpa_supplicant-${PV}.tar.gz \
 S = "${WORKDIR}/wpa_supplicant-${PV}/wpa_supplicant"
 
 PACKAGES_prepend = "wpa-supplicant-passphrase wpa-supplicant-cli "
-FILES_wpa-supplicant-passphrase = "/usr/sbin/wpa_passphrase"
-FILES_wpa-supplicant-cli = "/usr/sbin/wpa_cli"
+FILES_wpa-supplicant-passphrase = "${sbindir}/wpa_passphrase"
+FILES_wpa-supplicant-cli = "${sbindir}/wpa_cli"
+FILES_${PN} += " ${datadir}/dbus-1/system-services/*
 
 do_configure () {
 	install -m 0755 ${WORKDIR}/defconfig-gnutls .config
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
index 2dca594..87baf33 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
@@ -1,6 +1,6 @@
 require wpa-supplicant-0.7.inc
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI[md5sum] = "f516f191384a9a546e3f5145c08addda"
 SRC_URI[sha256sum] = "d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
-- 
1.6.6.1


