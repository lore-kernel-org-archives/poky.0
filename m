Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB2A64C80A8F
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 03:41:44 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2011 01:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,331,1304319600"; 
   d="scan'208";a="8348913"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 07 Jun 2011 01:41:43 -0700
From: y
To: poky@yoctoproject.org
Date: Tue,  7 Jun 2011 16:52:03 +0800
Message-Id: <9e80fcf7db2a25b1caa913c61764a9f36c1abcaf.1307436402.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/5] kernel.bbclass: Auto load cdc-acm and cdc-wdm
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
X-List-Received-Date: Tue, 07 Jun 2011 08:41:44 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/kernel.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 1bb69f5..1b50b38 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -264,6 +264,8 @@ module_autoload_rfcomm = "rfcomm"
 module_autoload_sa1100-rtc = "sa1100-rtc"
 # sa1100-rtc was renamed in 2.6.23 onwards
 module_autoload_rtc-sa1100 = "rtc-sa1100"
+module_autoload_cdc-acm = "cdc-acm"
+module_autoload_cdc-wdm = "cdc-wdm"
 
 # alias defaults (alphabetically sorted)
 module_conf_af_packet = "alias net-pf-17 af_packet"
-- 
1.7.1


