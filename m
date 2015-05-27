Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4573CE009C5; Wed, 27 May 2015 05:19:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1B59E0098D;
	Wed, 27 May 2015 05:19:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t4RCJVa1006087
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 May 2015 05:19:31 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.156) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 27 May 2015 05:19:30 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>, <linux-yocto@yoctoproject.org>
Date: Wed, 27 May 2015 20:19:13 +0800
Message-ID: <1432729155-28307-3-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
References: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH] meta; edgerouter: fix kernel config check errors
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
X-List-Received-Date: Wed, 27 May 2015 12:19:32 -0000
Content-Type: text/plain

Fix the following kernel config check errors:
  Value requested for CONFIG_HW_RANDOM_OCTEON not in final ".config"
  Requested value: "CONFIG_HW_RANDOM_OCTEON=y"
  Actual value set: "CONFIG_HW_RANDOM_OCTEON=m"

  Value requested for CONFIG_USB_OCTEON_EHCI not in final ".config"
  Requested value: "CONFIG_USB_OCTEON_EHCI=y"
  Actual value set: ""

  Value requested for CONFIG_USB_OCTEON_OHCI not in final ".config"
  Requested value: "CONFIG_USB_OCTEON_OHCI=y"
  Actual value set: ""

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta/cfg/kernel-cache/bsp/edgerouter/edgerouter.cfg | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta/cfg/kernel-cache/bsp/edgerouter/edgerouter.cfg b/meta/cfg/kernel-cache/bsp/edgerouter/edgerouter.cfg
index 9e5a6b65faca..54597416dde8 100644
--- a/meta/cfg/kernel-cache/bsp/edgerouter/edgerouter.cfg
+++ b/meta/cfg/kernel-cache/bsp/edgerouter/edgerouter.cfg
@@ -20,6 +20,7 @@ CONFIG_PCI_MSI=y
 CONFIG_I2C=y
 CONFIG_I2C_OCTEON=y
 
+CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_OCTEON=y
 
 #SPI
@@ -47,7 +48,9 @@ CONFIG_BCM87XX_PHY=y
 #USB
 CONFIG_USB=y
 CONFIG_OCTEON_USB=y
+CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_OCTEON_EHCI=y
+CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OCTEON_OHCI=y
 CONFIG_USB_OCTEON2_COMMON=y
 
-- 
2.1.0


