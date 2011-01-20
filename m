Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56CC64C80039
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 12:01:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 10:00:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,352,1291622400"; d="scan'208";a="377492348"
Received: from unknown (HELO [10.255.14.104]) ([10.255.14.104])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 10:00:31 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 20 Jan 2011 12:00:28 -0600
Message-ID: <1295546428.12074.243.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH][2.6.34 KERNEL] wrs_meta: turn on OHCI USB config option
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
X-List-Received-Date: Thu, 20 Jan 2011 18:01:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Allow crownbay to recognize low-speed devices such as mouse and
keyboard.

Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
  Branch: tzanussi/crownbay-usb-fix
  Browse:
http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-usb-fix

Please pull...

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index a516dc9..864e1dc 100644
--- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -21,6 +21,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_NET=y
 CONFIG_USB_UHCI_HCD=y
+CONFIG_USB_OHCI_HCD=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
-- 
1.7.0.4




