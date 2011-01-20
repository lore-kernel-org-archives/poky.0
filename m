Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E23774C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 16:57:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 14:57:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377641538"
Received: from unknown (HELO [10.255.14.104]) ([10.255.14.104])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 14:57:02 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 20 Jan 2011 16:56:59 -0600
Message-ID: <1295564219.12074.260.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH][2.6.34 KERNEL] wrs_meta (crownbay): turn on AHCI SATA option
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
X-List-Received-Date: Thu, 20 Jan 2011 22:57:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Allow crownbay to use/install/boot off of AHCI SATA drives.

Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
  Branch: tzanussi/crownbay-sata-fix
  Browse:
http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-sata-fix

Please pull...

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
index 864e1dc..4ab5a86 100644
--- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -27,6 +27,7 @@ CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_HDA_INTEL=y
+CONFIG_SATA_AHCI=y
 
 # Make sure these are on, otherwise the bootup won't be fun
 CONFIG_EXT3_FS=y
-- 
1.7.0.4




