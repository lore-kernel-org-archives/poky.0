Return-Path: <yann.cardaillac@balena.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D54AD6B085
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 16:00:40 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18082.1769702438388480861
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 08:00:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balena.io header.s=google header.b=Px5/4jCC;
 spf=pass (domain: balena.io, ip: 209.85.221.50, mailfrom: yann.cardaillac@balena.io)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4327555464cso964281f8f.1
        for <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 08:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=balena.io; s=google; t=1769702436; x=1770307236; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NOeSBSH5D+6aRQi1wRpu91AOUE2pyxNtRlMOwJEfIOk=;
        b=Px5/4jCCa8o1yTXD3fWyD34HoFoI2wL2gsVlPmAx1wQNTBauVjWYZdZC2GqW4mmYXd
         L0/nVGnTyKeauh/NSQwggAOPizxlY2mbsKsWDjwHQ+3904Suxv23WNhePn6mWYZZvxhf
         muivPAXhvgEG//Nh95iV218uJmHA9b6B8fVog7UgOVx1cnmRgSZZBg5XR2Jl6x8WG0jS
         SHn8H6anAFJJouPZOSS6qNXKJ90FgF2L/EiknfXcuGxOry+ScgLBB/rb+TGAj9V35JL3
         N4JkV8rS0Bgr8/YVCsQCDl6srvDzrb6/78noX19/sxPfwsZfBz6H6EN1YbkjPjtUA8It
         7Cyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769702436; x=1770307236;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NOeSBSH5D+6aRQi1wRpu91AOUE2pyxNtRlMOwJEfIOk=;
        b=dq11UrYp+FUeqV+/naMFyGOOlHfsOf0DSma7FPZqSa3DztONPtpMAdpgdvHGFRwpVg
         9md6d9TbLiIliUBWC2xaRob2b84T9867h9f7a2RRFXJXns7xQNo005+YVIZFLHO0zWHA
         NdahjDlwLTLLvLAPICE/KlBO3dvbklJBgG2NE4jFLsvoJCshayFgwX9J38AaVYJE7A0M
         PiHNyWL8pUF+xYWjjw0tZc0xFHMLCXGrq6VbPmkB51oRXBVjYctrb7moNitVpvFGDOKM
         Z7inBribVYkW1mLTiUTFc1Ha0mzVsOkK9g+X8QCPCherI9ipSgau8NERYYiSxdviV2vN
         wuog==
X-Gm-Message-State: AOJu0Yw3feFnkwqR07aMQkarhFl+vV3ODiWbjW2PXLu2InVIETiwKvcO
	MzZ14vTdvl6Mtxs+0fYZ08ZzybIfY/Mekde4IRDL2NzXjtJ443ZfoemmOtUTu7+tKY2MHI1Q9jR
	fflzHRxo=
X-Gm-Gg: AZuq6aLgr/2hHhoR6BUgv140U2xESpFma7vTpUiBgjmDTrJdxhmh5Qd5XTvaE0+8tK+
	cGOAh4CTGlPuvptElZ9I7zzjPFBthkubXoPM1tx13udSPNrWVWZMYxnHx7tutLb18EgtX+nkp3m
	kYqjJa17VhSgrtWz6ZckIbjF0g8tf+1a500AZSksxQCKAVixN1WAfmnm1xItc+4h4xwA2Zdyf/0
	BlLZ3tuGWl73ZRkrZxrvc4DiMADTtLxivVsJUOAIxxTx3cLlVT1NY5/iRE+e2sFo0w3GgWzpM6k
	AU/0k6bLd4zZGBIQJJ8v57Qh7esEdN7XWkH0Zk4jp4dsSZBYoGJLyknKqPOWTUPHXMt1KLxElwT
	D6pnvTeCXclICiwyFPE1DOsqVbtutiYAsBdn+pKfRj6HizTaTz3+/Tp6A4nyeSCnF3dnS74xr+5
	n+oWI/8qUzDUpUGa9d/O387A==
X-Received: by 2002:a05:6000:3105:b0:430:f5ed:83f9 with SMTP id ffacd0b85a97d-435f3a6ccacmr118583f8f.2.1769702436359;
        Thu, 29 Jan 2026 08:00:36 -0800 (PST)
Received: from yann-ThinkPad-P14s-Gen-5.. ([2a09:bac1:2780:48::215:87])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4757sm15903044f8f.5.2026.01.29.08.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 08:00:36 -0800 (PST)
From: Yann CARDAILLAC <yann.cardaillac@balena.io>
To: poky@lists.yoctoproject.org
Cc: Yann CARDAILLAC <yann.cardaillac@balena.io>
Subject: [PATCH] Clearing empty linux firmware packages
Date: Thu, 29 Jan 2026 17:00:33 +0100
Message-ID: <20260129160033.849551-1-yann.cardaillac@balena.io>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 16:00:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13829

Removing packages:
- ${PN}-wl1251 as it's already shipped in linux-firmware-wl12xx
- Removing old ${PN}-iwlwifi-3160-* as only the version ${PN}-iwlwifi-3160-17 is now shipped
- Removing ${PN}-iwlwifi-6000g2b-5 and ${PN}-iwlwifi-6000g2a-5 as they are replaced by versions 6
- Removing ${PN}-iwlwifi-6050-4 as it's replaced by ${PN}-iwlwifi-6050-5

Signed-off-by: Yann CARDAILLAC <yann.cardaillac@balena.io>
---
 .../linux-firmware/linux-firmware_20240909.bb | 56 ++-----------------
 1 file changed, 4 insertions(+), 52 deletions(-)

diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
index 30c47d7720..2a0f8049ce 100644
--- a/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
+++ b/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
@@ -71,7 +71,6 @@ LICENSE = "\
     & Firmware-ti-keystone \
     & Firmware-ueagle-atm4-firmware \
     & Firmware-via_vt6656 \
-    & Firmware-wl1251 \
     & Firmware-xc4000 \
     & Firmware-xc5000 \
     & Firmware-xc5000c \
@@ -224,7 +223,6 @@ NO_GENERIC_LICENSE[Firmware-ti-connectivity] = "LICENCE.ti-connectivity"
 NO_GENERIC_LICENSE[Firmware-ti-keystone] = "LICENCE.ti-keystone"
 NO_GENERIC_LICENSE[Firmware-ueagle-atm4-firmware] = "LICENCE.ueagle-atm4-firmware"
 NO_GENERIC_LICENSE[Firmware-via_vt6656] = "LICENCE.via_vt6656"
-NO_GENERIC_LICENSE[Firmware-wl1251] = "LICENCE.wl1251"
 NO_GENERIC_LICENSE[Firmware-xc4000] = "LICENCE.xc4000"
 NO_GENERIC_LICENSE[Firmware-xc5000] = "LICENCE.xc5000"
 NO_GENERIC_LICENSE[Firmware-xc5000c] = "LICENCE.xc5000c"
@@ -327,13 +325,11 @@ PACKAGES =+ "${PN}-amphion-vpu-license ${PN}-amphion-vpu \
              ${PN}-imx-sdma-license ${PN}-imx-sdma-imx6q ${PN}-imx-sdma-imx7d \
              \
              ${PN}-iwlwifi-license ${PN}-iwlwifi \
+             ${PN}-iwlwifi-3160-17 \
              ${PN}-iwlwifi-135-6 \
-             ${PN}-iwlwifi-3160-7 ${PN}-iwlwifi-3160-8 ${PN}-iwlwifi-3160-9 \
-             ${PN}-iwlwifi-3160-10 ${PN}-iwlwifi-3160-12 ${PN}-iwlwifi-3160-13 \
-             ${PN}-iwlwifi-3160-16 ${PN}-iwlwifi-3160-17 \
-             ${PN}-iwlwifi-6000-4 ${PN}-iwlwifi-6000g2a-5 ${PN}-iwlwifi-6000g2a-6 \
-             ${PN}-iwlwifi-6000g2b-5 ${PN}-iwlwifi-6000g2b-6 \
-             ${PN}-iwlwifi-6050-4 ${PN}-iwlwifi-6050-5 \
+             ${PN}-iwlwifi-6000-4 ${PN}-iwlwifi-6000g2a-6 \
+             ${PN}-iwlwifi-6000g2b-6 \
+             ${PN}-iwlwifi-6050-5 \
              ${PN}-iwlwifi-7260 \
              ${PN}-iwlwifi-7265 \
              ${PN}-iwlwifi-7265d ${PN}-iwlwifi-8000c ${PN}-iwlwifi-8265 \
@@ -398,7 +394,6 @@ PACKAGES =+ "${PN}-amphion-vpu-license ${PN}-amphion-vpu \
              ${PN}-amlogic-vdec-license ${PN}-amlogic-vdec \
              ${PN}-lt9611uxc ${PN}-lontium-license \
              ${PN}-whence-license \
-             ${PN}-wl1251-license ${PN}-wl1251 \
              ${PN}-xc4000-license ${PN}-xc4000 \
              ${PN}-xc5000-license ${PN}-xc5000 \
              ${PN}-xc5000c-license ${PN}-xc5000c \
@@ -877,18 +872,6 @@ RDEPENDS:${PN}-rtl8822 += "${PN}-rtl-license"
 RDEPENDS:${PN}-rtl8168 += "${PN}-whence-license"
 RDEPENDS:${PN}-rtl-nic += "${PN}-whence-license"
 
-# For TI wl1251
-LICENSE:${PN}-wl1251 = "Firmware-wl1251"
-LICENSE:${PN}-wl1251-license = "Firmware-wl1251"
-
-FILES:${PN}-wl1251 = " \
-  ${nonarch_base_libdir}/firmware/ti-connectivity/wl1251-fw.bin         \
-  ${nonarch_base_libdir}/firmware/ti-connectivity/wl1251-nvs.bin        \
-"
-FILES:${PN}-wl1251-license = "${nonarch_base_libdir}/firmware/LICENCE.wl1251"
-
-RDEPENDS:${PN}-wl1251 += "${PN}-wl1251-license"
-
 # For ti-connectivity
 LICENSE:${PN}-wlcommon = "Firmware-ti-connectivity"
 LICENSE:${PN}-wl12xx = "Firmware-ti-connectivity"
@@ -1174,20 +1157,10 @@ RDEPENDS:${PN}-imx-sdma-imx7d += "${PN}-imx-sdma-license"
 # For iwlwifi
 LICENSE:${PN}-iwlwifi           = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-135-6     = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-7    = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-8    = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-9    = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-10   = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-12   = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-13   = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-3160-16   = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-3160-17   = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-6000-4    = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-6000g2a-5 = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-6000g2a-6 = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-6000g2b-5 = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-6000g2b-6 = "Firmware-iwlwifi_firmware"
-LICENSE:${PN}-iwlwifi-6050-4    = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-6050-5    = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-7260      = "Firmware-iwlwifi_firmware"
 LICENSE:${PN}-iwlwifi-7265      = "Firmware-iwlwifi_firmware"
@@ -1202,20 +1175,10 @@ LICENSE:${PN}-iwlwifi-license   = "Firmware-iwlwifi_firmware"
 
 FILES:${PN}-iwlwifi-license = "${nonarch_base_libdir}/firmware/LICENCE.iwlwifi_firmware"
 FILES:${PN}-iwlwifi-135-6 = "${nonarch_base_libdir}/firmware/iwlwifi-135-6.ucode"
-FILES:${PN}-iwlwifi-3160-7 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-7.ucode"
-FILES:${PN}-iwlwifi-3160-8 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-8.ucode"
-FILES:${PN}-iwlwifi-3160-9 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-9.ucode"
-FILES:${PN}-iwlwifi-3160-10 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-10.ucode"
-FILES:${PN}-iwlwifi-3160-12 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-12.ucode"
-FILES:${PN}-iwlwifi-3160-13 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-13.ucode"
-FILES:${PN}-iwlwifi-3160-16 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-16.ucode"
 FILES:${PN}-iwlwifi-3160-17 = "${nonarch_base_libdir}/firmware/iwlwifi-3160-17.ucode"
 FILES:${PN}-iwlwifi-6000-4 = "${nonarch_base_libdir}/firmware/iwlwifi-6000-4.ucode"
-FILES:${PN}-iwlwifi-6000g2a-5 = "${nonarch_base_libdir}/firmware/iwlwifi-6000g2a-5.ucode"
 FILES:${PN}-iwlwifi-6000g2a-6 = "${nonarch_base_libdir}/firmware/iwlwifi-6000g2a-6.ucode"
-FILES:${PN}-iwlwifi-6000g2b-5 = "${nonarch_base_libdir}/firmware/iwlwifi-6000g2b-5.ucode"
 FILES:${PN}-iwlwifi-6000g2b-6 = "${nonarch_base_libdir}/firmware/iwlwifi-6000g2b-6.ucode"
-FILES:${PN}-iwlwifi-6050-4 = "${nonarch_base_libdir}/firmware/iwlwifi-6050-4.ucode"
 FILES:${PN}-iwlwifi-6050-5 = "${nonarch_base_libdir}/firmware/iwlwifi-6050-5.ucode"
 FILES:${PN}-iwlwifi-7260   = "${nonarch_base_libdir}/firmware/iwlwifi-7260-*.ucode"
 FILES:${PN}-iwlwifi-7265   = "${nonarch_base_libdir}/firmware/iwlwifi-7265-*.ucode"
@@ -1230,20 +1193,10 @@ FILES:${PN}-iwlwifi-misc   = " \
 "
 
 RDEPENDS:${PN}-iwlwifi-135-6     = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-7    = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-8    = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-9    = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-10   = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-12   = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-13   = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-3160-16   = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-3160-17   = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-6000-4    = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-6000g2a-5 = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-6000g2a-6 = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-6000g2b-5 = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-6000g2b-6 = "${PN}-iwlwifi-license"
-RDEPENDS:${PN}-iwlwifi-6050-4    = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-6050-5    = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-7260      = "${PN}-iwlwifi-license"
 RDEPENDS:${PN}-iwlwifi-7265      = "${PN}-iwlwifi-license"
@@ -1552,7 +1505,6 @@ LICENSE:${PN} = "\
     & Firmware-ti-connectivity \
     & Firmware-ti-keystone \
     & Firmware-ueagle-atm4-firmware \
-    & Firmware-wl1251 \
     & Firmware-xc4000 \
     & Firmware-xc5000 \
     & Firmware-xc5000c \
-- 
2.43.0


