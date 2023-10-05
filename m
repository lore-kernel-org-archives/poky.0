Return-Path: <fahad.arslan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44EC4E936FD
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 04:59:03 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.8893.1696481936698299057
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 21:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=apG6qVOi;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: fahad.arslan@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-690d935dbc2so115207b3a.1
        for <poky@lists.yoctoproject.org>; Wed, 04 Oct 2023 21:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696481935; x=1697086735; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FxGAYdgi+EUgkqtv+naT8rO3jnSewZEU79z6cAceWAs=;
        b=apG6qVOibMQOSuakPNAnMNAEg4JbX+JEec6Ky+RWhH5+X/02F338EPY5jUaGdm7KBe
         qBupvpW5iWgFCrcxVNUG/mdUE2jrYWgVrkZGRNw4fEWu2hJh8HqdIU46kivDh2gcTvlh
         En9zr4Et85cAF3PJbhfLSCw2bGTW6SALi921NtD79wkIaXkPYYUZXT5WDz+pGeBVuZe6
         P7g6ZqqEZmRcQcXM4X25DmrU026ufibaPzzQPCOtCyEWMrnNbu0Woa/0ffmEE+6qCo92
         fEFFl5JNbFqkDRA9PB1/PHLDo/JESS2w/xQdq1r4aJWDwAvkWpON1rFHZ1KxlJLGbJh8
         Bw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696481935; x=1697086735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FxGAYdgi+EUgkqtv+naT8rO3jnSewZEU79z6cAceWAs=;
        b=NETBWp2LYSXvwvdEyCNEsEI0rV7IE/jZxt/HsFIFU/3vmrwep5ZaZXwx3lMu3h0rbY
         6gQtb/ksfp2dYrla9vCI1rTEykvM5MgTqf9fLbQvTPLiQA2yFMkvLFb3Recqo70rpwHY
         3ovxP09A1mCXNgYYJoaP2Ke6eMmEo1jY1q+s0BEUZ5ONELZTjj6PxIZ/lwH5M5tPtPqz
         p/r01ae4g9LJ13y2LV+fFDCRUIYbL7NO0pWo0qV0jH2jDLUyg0GEqgrA/QpT4w29y1Bq
         9Ez7BXINSN56O4QWLt5+PJBuzNyapKVYjqMzy9hi+R0xcdVAOkVH1Q3iNwJMGbCz7wBF
         vRzg==
X-Gm-Message-State: AOJu0YxLFXy8U2unS1KuPpebhg1ji2uMWesQaXOpDjFQWiUsfJOZSe3H
	DiLB4EtCmZjEuVFVAsTQ/dCF2SCGIDM=
X-Google-Smtp-Source: AGHT+IErgHTu07F9qfnYTIh5OFc2zFylC3HDL9xiEV0fash5Z6Zz335HtT1OzlJxS/KUOF/ERw20Sw==
X-Received: by 2002:a05:6a00:1d8f:b0:692:afaf:32b4 with SMTP id z15-20020a056a001d8f00b00692afaf32b4mr4532717pfw.0.1696481935502;
        Wed, 04 Oct 2023 21:58:55 -0700 (PDT)
Received: from PKL-FARSLAN-LT.world.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id fk9-20020a056a003a8900b006905f6bfc37sm414531pfb.31.2023.10.04.21.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 21:58:55 -0700 (PDT)
From: Fahad Arslan <fahad.arslan@gmail.com>
To: poky@lists.yoctoproject.org
Cc: fahad.arslan@siemens.com
Subject: [PATCH] linux-firmware: create separate package for cirrus and cnm firmwares
Date: Thu,  5 Oct 2023 09:58:44 +0500
Message-Id: <20231005045844.1264068-1-fahad.arslan@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 05 Oct 2023 04:59:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13171

From: Fahad Arslan <fahad.arslan@siemens.com>

Some licenses only allow usage of corresponding firmwares when a specific
hardware is present. This requires split of such firmwares from linux-firmware
package to firmware specific sub package. As this split is based off of
licensing, it makes sense to group firmware blobs having the same license in the
same package. This commit is a first step in this direction, and creates
separate packages for cirrus and cnm firmware.

Signed-off-by: Fahad Arslan <fahad.arslan@siemens.com>
---
 .../linux-firmware/linux-firmware_20230804.bb | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_20230804.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_20230804.bb
index ee14630ce0..1dbe8374bc 100644
--- a/meta/recipes-kernel/linux-firmware/linux-firmware_20230804.bb
+++ b/meta/recipes-kernel/linux-firmware/linux-firmware_20230804.bb
@@ -18,6 +18,8 @@ LICENSE = "\
     & Firmware-ca0132 \
     & Firmware-cavium \
     & Firmware-chelsio_firmware \
+    & Firmware-cirrus \
+    & Firmware-cnm \
     & Firmware-cw1200 \
     & Firmware-cypress \
     & Firmware-dib0700 \
@@ -83,6 +85,8 @@ LIC_FILES_CHKSUM = "file://LICENCE.Abilis;md5=b5ee3f410780e56711ad48eadc22b8bc \
                     file://LICENCE.cadence;md5=009f46816f6956cfb75ede13d3e1cee0 \
                     file://LICENCE.cavium;md5=c37aaffb1ebe5939b2580d073a95daea \
                     file://LICENCE.chelsio_firmware;md5=819aa8c3fa453f1b258ed8d168a9d903 \
+                    file://LICENSE.cirrus;md5=bb18d943382abf8e8232a9407bfdafe0 \
+                    file://LICENCE.cnm;md5=93b67e6bac7f8fec22b96b8ad0a1a9d0 \
                     file://LICENCE.cw1200;md5=f0f770864e7a8444a5c5aa9d12a3a7ed \
                     file://LICENCE.cypress;md5=48cd9436c763bf873961f9ed7b5c147b \
                     file://LICENSE.dib0700;md5=f7411825c8a555a1a3e5eab9ca773431 \
@@ -155,6 +159,8 @@ NO_GENERIC_LICENSE[Firmware-ca0132] = "LICENCE.ca0132"
 NO_GENERIC_LICENSE[Firmware-cadence] = "LICENCE.cadence"
 NO_GENERIC_LICENSE[Firmware-cavium] = "LICENCE.cavium"
 NO_GENERIC_LICENSE[Firmware-chelsio_firmware] = "LICENCE.chelsio_firmware"
+NO_GENERIC_LICENSE[Firmware-cirrus] = "LICENSE.cirrus"
+NO_GENERIC_LICENSE[Firmware-cnm] = "LICENCE.cnm"
 NO_GENERIC_LICENSE[Firmware-cw1200] = "LICENCE.cw1200"
 NO_GENERIC_LICENSE[Firmware-cypress] = "LICENCE.cypress"
 NO_GENERIC_LICENSE[Firmware-dib0700] = "LICENSE.dib0700"
@@ -283,6 +289,8 @@ PACKAGES =+ "${PN}-ralink-license ${PN}-ralink \
              ${PN}-bcm4373 \
              ${PN}-bcm43xx \
              ${PN}-bcm43xx-hdr \
+             ${PN}-cirrus-license ${PN}-cirrus \
+             ${PN}-cnm-license ${PN}-cnm \
              ${PN}-atheros-license ${PN}-ar9170 ${PN}-ath6k ${PN}-ath9k ${PN}-ath3k \
              ${PN}-gplv2-license ${PN}-carl9170 \
              ${PN}-ar3k-license ${PN}-ar3k ${PN}-ath10k-license ${PN}-ath10k ${PN}-ath11k ${PN}-qca \
@@ -879,6 +887,24 @@ FILES:${PN}-whence-license = "${nonarch_base_libdir}/firmware/WHENCE"
 
 RDEPENDS:${PN}-bnx2-mips += "${PN}-whence-license"
 
+# For cirrus
+LICENSE:${PN}-cirrus = "Firmware-cirrus"
+LICENSE:${PN}-cirrus-license = "Firmware-cirrus"
+
+FILES:${PN}-cirrus = "${nonarch_base_libdir}/firmware/cirrus/*"
+FILES:${PN}-cirrus-license = "${nonarch_base_libdir}/firmware/LICENSE.cirrus"
+
+RDEPENDS:${PN}-cirrus += "${PN}-cirrus-license"
+
+# For cnm
+LICENSE:${PN}-cnm = "Firmware-cnm"
+LICENSE:${PN}-cnm-license = "Firmware-cnm"
+
+FILES:${PN}-cnm = "${nonarch_base_libdir}/firmware/cnm/wave521c_k3_codec_fw.bin"
+FILES:${PN}-cnm-license = "${nonarch_base_libdir}/firmware/LICENCE.cnm"
+
+RDEPENDS:${PN}-cnm += "${PN}-cnm-license"
+
 # For imx-sdma
 LICENSE:${PN}-imx-sdma-imx6q       = "Firmware-imx-sdma_firmware"
 LICENSE:${PN}-imx-sdma-imx7d       = "Firmware-imx-sdma_firmware"
@@ -1167,6 +1193,8 @@ LICENSE:${PN} = "\
     & Firmware-ca0132 \
     & Firmware-cavium \
     & Firmware-chelsio_firmware \
+    & Firmware-cirrus \
+    & Firmware-cnm \
     & Firmware-cw1200 \
     & Firmware-dib0700 \
     & Firmware-e100 \
-- 
2.25.1


