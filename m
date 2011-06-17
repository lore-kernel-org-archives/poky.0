Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C1C24C8009D
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 23:42:28 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jun 2011 21:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,379,1304319600"; d="scan'208";a="17331823"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2011 21:42:27 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Jun 2011 12:54:47 +0800
Message-Id: <1308286487-26258-1-git-send-email-dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH v2] meta-fishriver/linux-yocto: Auto load cdc-acm and cdc-wdm modules
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
X-List-Received-Date: Fri, 17 Jun 2011 04:42:28 -0000

cdc-acm and cdc-wdm are a kind of generic driver which converts USB
device to be virtual modem.

Automatically load the two drivers to support on board 3G module
type conversion.

Changes from v1:
Update the commit message.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index b767109..5f8b8ca 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -4,3 +4,6 @@ KMACHINE_fishriver  = "yocto/standard/fishriver"
 
 SRCREV_machine_pn-linux-yocto_fishriver ?= "697d84759be192403a8a87ab269196c67a0c2c88"
 SRCREV_meta_pn-linux-yocto_fishriver ?= "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
+
+module_autoload_cdc-acm = "cdc-acm"
+module_autoload_cdc-wdm = "cdc-wdm"
-- 
1.7.0.4


