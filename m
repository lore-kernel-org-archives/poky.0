Return-Path: <aalonso00@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56FCE4C811D2
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:07 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yw0-f48.google.com with SMTP id 7so2084365ywo.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=iP6/qvc0DpLcaWe5caxtJERGafxGWkwmFT9qCaTLR/Y=;
	b=vS8p4i16KGDFravU15q1lheqthcTPEOc5eLWDJQisOG0HATJ0UW+1zVVXNjUYkclKf
	Z7Py9v5xFie/218d6oGu9GIBcjcsp2V2KqAmyRfMwUGH4WGmml5gdj2PQfF4liMcxkuG
	DwHDN4jUau1RF2YWeU6ZmhtlokA1qim0m+YXg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=Ewj0N8g92hqGfSw37phubSMooRSYiFVl96pB8h9h9XTnX2Vlxz6m74Hn35xYzr7LWs
	NFC5nfpNIF60jCzphnMxVlulfBzntKv3Ilc+QzGfcbIpCPCqd1jCXndHeLE2rQPME3ws
	3Mw2KMm/ZzZbCA2n59Z+9fDknOKZ2kfe7ZrpI=
Received: by 10.100.197.2 with SMTP id u2mr2774538anf.98.1295295847157;
	Mon, 17 Jan 2011 12:24:07 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.04
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:06 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:28 -0600
Message-Id: <1295296178-18590-15-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 15/25] linux-xilinx: remove hardcoded include path
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:07 -0000

* Remove hardcodded include path
* Fix inherit xilinx-kernel for sw/hw integration
* Remove configure prepend function, use default config
  mechanism
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-kernel/linux/linux-xilinx_git.bb |   10 +++-------
 1 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/recipes-kernel/linux/linux-xilinx_git.bb b/recipes-kernel/linux/linux-xilinx_git.bb
index 0541b3f..47f19b1 100644
--- a/recipes-kernel/linux/linux-xilinx_git.bb
+++ b/recipes-kernel/linux/linux-xilinx_git.bb
@@ -1,4 +1,4 @@
-require ../meta/recipes-kernel/linux/linux.inc
+require recipes-kernel/linux/linux.inc
 
 DESCRIPTION = "Linux kernel for Xilinx platforms"
 
@@ -9,21 +9,17 @@ DEFAULT_PREFERENCE_virtex5 = "1"
 
 TAG="xilinx_v2.6.37-rc4"
 PV = "2.6.37.4"
-PR = "r3"
+PR = "r4"
 
 SRCREV = "${TAG}"
 SRC_URI = "git://git.xilinx.com/linux-2.6-xlnx.git;protocol=git \
            file://linux-xilinx-do-not-use-OS-option.patch \
 		   file://defconfig"
 
-inherit kernel xilinx-bsp
+inherit kernel xilinx-kernel
 
 TARGET_BOARD = "${@map_target(bb.data.getVar('TARGET_ARCH', d, 1), d)}"
 KERNEL_DEVICETREE_virtex4 = "arch/${ARCH}/boot/dts/virtex${TARGET_BOARD}.dts"
 KERNEL_DEVICETREE_virtex5 = "arch/${ARCH}/boot/dts/virtex${TARGET_BOARD}.dts"
 
 S = "${WORKDIR}/git"
-
-do_configure_prepend() {
-    install -m 0644 ${WORKDIR}/defconfig ${S}/.config
-}
-- 
1.7.3.4


