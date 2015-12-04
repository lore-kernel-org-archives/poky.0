Return-Path: <cristian.bercaru@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07E78E0090E; Fri,  4 Dec 2015 09:29:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from laptopcb.windriver.com (unknown [86.125.12.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C10A0E00947
	for <poky@yoctoproject.org>; Fri,  4 Dec 2015 09:29:09 -0800 (PST)
Received: by laptopcb.windriver.com (Postfix, from userid 1000)
	id 570E11C6006B; Fri,  4 Dec 2015 19:20:42 +0200 (EET)
From: Cristian Bercaru <cristian.bercaru@windriver.com>
To: poky@yoctoproject.org
Date: Fri,  4 Dec 2015 19:20:41 +0200
Message-Id: <cover.1449248342.git.cristian.bercaru@windriver.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Daniel Dragomir <daniel.dragomir@windriver.com>
Subject: [PATCH] ARMv8 32-bit compiler tunings
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
X-List-Received-Date: Fri, 04 Dec 2015 17:29:15 -0000

Hello!

Starting with linux-yocto-4.1, Intel provides kernel support for its
ARM v8 Axxia platforms, both on 32-bit and 64-bit.
Poky already contains arm 64-bit compiler tunings, so I added 32-bit
tunings based on those for armv7.

The patch that I send you is a draft. Please review it and if it's ok
I will return with thumb and big-endian tunings.

Thank you,
Cristian Bercaru (1):
  add tunings for 32-bit ARMv8-a

 meta/conf/machine/include/arm/arch-armv7a.inc      |    1 -
 meta/conf/machine/include/arm/arch-armv8a.inc      |   65 ++++++++++++++++++++
 meta/conf/machine/include/arm/feature-arm-neon.inc |    3 -
 meta/conf/machine/include/arm/feature-arm-vfp.inc  |   59 ++++++++++++++----
 4 files changed, 112 insertions(+), 16 deletions(-)
 create mode 100644 meta/conf/machine/include/arm/arch-armv8a.inc
 delete mode 100644 meta/conf/machine/include/arm/feature-arm-neon.inc

-- 
1.7.9.5

