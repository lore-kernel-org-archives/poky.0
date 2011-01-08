Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B13BF4C8086E
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 04:17:57 -0600 (CST)
Received: by wye20 with SMTP id 20so19184836wye.35
	for <poky@yoctoproject.org>; Sat, 08 Jan 2011 02:17:56 -0800 (PST)
Received: by 10.227.151.145 with SMTP id c17mr426504wbw.139.1294481875260;
	Sat, 08 Jan 2011 02:17:55 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id e12sm12901000wer.12.2011.01.08.02.17.54
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 08 Jan 2011 02:17:54 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Sat,  8 Jan 2011 11:17:50 +0100
Message-Id: <1294481870-3110-1-git-send-email-koen@openembedded.org>
X-Mailer: git-send-email 1.7.0
In-Reply-To: <1294418164-5124-1-git-send-email-koen@openembedded.org>
References: <1294418164-5124-1-git-send-email-koen@openembedded.org>
Subject: [PATCH] wpa-supplicant 0.7.3: fix dbus service activation
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
X-List-Received-Date: Sat, 08 Jan 2011 10:17:58 -0000

From: Koen Kooi <koen@dominion.thruhere.net>

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 .../wpa-supplicant/wpa-supplicant-0.7.inc          |    3 +++
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
index 6eda3b1..c91af45 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
@@ -56,6 +56,9 @@ do_install () {
 
 	install -d ${D}/${sysconfdir}/dbus-1/system.d
 	install -m 644 ${S}/dbus/dbus-wpa_supplicant.conf ${D}/${sysconfdir}/dbus-1/system.d
+	install -d ${D}/${datadir}/dbus-1/system-services
+	sed -i -e s:${base_sbindir}:${sbindir}:g ${S}/dbus/*.service
+	install -m 644 ${S}/dbus/*.service ${D}/${datadir}/dbus-1/system-services
 
 	install -d ${D}/etc/default/volatiles
 	install -m 0644 ${WORKDIR}/99_wpa_supplicant ${D}/etc/default/volatiles
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
index e4ae019..2dca594 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
@@ -1,6 +1,6 @@
 require wpa-supplicant-0.7.inc
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI[md5sum] = "f516f191384a9a546e3f5145c08addda"
 SRC_URI[sha256sum] = "d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
-- 
1.6.6.1


