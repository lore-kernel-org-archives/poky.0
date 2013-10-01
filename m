Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 823F2E0160C
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 07:17:33 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id m15so4995737wgh.5
	for <poky@yoctoproject.org>; Tue, 01 Oct 2013 07:17:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=RZsVLrI6FgVUPmaiC8E2Ec0ZubQFndhCMepKkYEfdDM=;
	b=KpBs9cCAu9EGbvvN4i7GBP+2jQoKeqo3Ny1OFGrMVFu0VyhJPgFecVRmXv2i6VPRH1
	maAqyrVOBI9OmlD40h9IB6wZ6WJPDrxdDrIRbahUVybEmrqmTnM0S2m0XPSrlztVteKD
	2qkOBbK03KQdF3rHVqjwKVijRy1Zlu0OJpL25QPlr3tFQQsUEE/ynDdgZVwA3EYauTSm
	anGCXI83EsUAZB0RtubvOaZD1aL6C0/WNFgjTGDcvKBdBUVJv5hSQwxF7zoz/i6pE41f
	vFoBAXFFUBY5zCVE9N5Zpg9A8o28xda3313LnU7BoBZcDTDBZ5Wcx2Wdr6B5z/boa3Lk
	4YbQ==
X-Gm-Message-State: ALoCoQmSRg4wKsSMjk+mintq0USKyjc4Lc+BM1E/Ex52VBOkjE2Femb/reC1qXWxwOcr3u/bQmxO
X-Received: by 10.180.189.17 with SMTP id ge17mr18692443wic.53.1380637052790; 
	Tue, 01 Oct 2013 07:17:32 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e5sm6500424wiy.2.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 07:17:31 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Oct 2013 15:17:21 +0100
Message-Id: <1380637041-23143-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] README.hardware: update genericx86 hardware support
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Oct 2013 14:17:34 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 README.hardware |   34 ++++++++++++++++++++++++++--------
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/README.hardware b/README.hardware
index 3686759..607062b 100644
--- a/README.hardware
+++ b/README.hardware
@@ -75,14 +75,32 @@ Intel x86 based PCs and devices (genericx86)
 
 The genericx86 MACHINE is tested on the following platforms:
 
-  o Asus EeePC 901
-  o Acer Aspire One
-  o Toshiba NB305
-  o Intel Embedded Development Board 1-N450 (Black Sand)
-
-and is likely to work on many unlisted Atom based devices. The MACHINE type
-supports ethernet, wifi, sound, and i915 graphics by default in addition to
-common PC input devices, busses, and so on.
+Intel Xeon/Core i-Series:
+  + Intel Romley Server: Sandy Bridge Xeon processor, C600 PCH (Patsburg), (Canoe Pass CRB)
+  + Intel Romley Server: Ivy Bridge Xeon processor, C600 PCH (Patsburg), (Intel SDP S2R3)
+  + Intel Crystal Forest Server: Sandy Bridge Xeon processor, DH89xx PCH (Cave Creek), (Stargo CRB)
+  + Intel Chief River Mobile: Ivy Bridge Mobile processor, QM77 PCH (Panther Point-M), (Emerald Lake II CRB, Sabino Canyon CRB)
+  + Intel Huron River Mobile: Sandy Bridge processor, QM67 PCH (Cougar Point), (Emerald Lake CRB, EVOC EC7-1817LNAR board)
+  + Intel Calpella Platform: Core i7 processor, QM57 PCH (Ibex Peak-M), (Red Fort CRB, Emerson MATXM CORE-411-B)
+  + Intel Nehalem/Westmere-EP Server: Xeon 56xx/55xx processors, 5520 chipset, ICH10R IOH (82801), (Hanlan Creek CRB)
+  + Intel Nehalem Workstation: Xeon 56xx/55xx processors, System SC5650SCWS (Greencity CRB)
+  + Intel Picket Post Server: Xeon 56xx/55xx processors (Jasper Forest), 3420 chipset (Ibex Peak), (Osage CRB)
+  + Intel Storage Platform: Sandy Bridge Xeon processor, C600 PCH (Patsburg), (Oak Creek Canyon CRB)
+  + Intel Shark Bay Client Platform: Haswell processor, LynxPoint PCH, (Walnut Canyon CRB, Lava Canyon CRB, Basking Ridge CRB, Flathead Creek CRB)
+  + Intel Shark Bay Ultrabook Platform: Haswell ULT processor, Lynx Point-LP PCH, (WhiteTip Mountain 1 CRB)
+
+Intel Atom platforms:
+  + Intel embedded Menlow: Intel Atom Z510/530 CPU, System Controller Hub US15W (Portwell NANO-8044)
+  + Intel Luna Pier: Intel Atom N4xx/D5xx series CPU (aka: Pineview-D & -M), 82801HM I/O Hub (ICH8M), (Advantech AIMB-212, Moon Creek CRB)
+  + Intel Queens Bay platform: Intel Atom E6xx CPU (aka: Tunnel Creek), Topcliff EG20T I/O Hub (Emerson NITX-315, Crown Bay CRB, Minnow Board)
+  + Intel Fish River Island platform: Intel Atom E6xx CPU (aka: Tunnel Creek), Topcliff EG20T I/O Hub (Kontron KM2M806)
+  + Intel Cedar Trail platform: Intel Atom N2000 & D2000 series CPU (aka: Cedarview), NM10 Express Chipset (Norco kit BIS-6630, Cedar Rock CRB)
+
+and is likely to work on many unlisted Atom/Core/Xeon based devices. The MACHINE
+type supports ethernet, wifi, sound, and Intel/vesa graphics by default in
+addition to common PC input devices, busses, and so on.  Note that it does not
+included the binary-only graphic drivers used on some Atom platforms, for
+accelerated graphics on these machines please refer to meta-intel.
 
 Depending on the device, it can boot from a traditional hard-disk, a USB device,
 or over the network. Writing generated images to physical media is
-- 
1.7.10.4


