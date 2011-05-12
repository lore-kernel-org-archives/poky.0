Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28A5A4C810FE
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:04:51 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 15:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="435222527"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 15:04:42 -0700
Message-Id: <5157fc3a09d70bf0f604733b855bbcfebb69ea98.1305235994.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305235993.git.tom.zanussi@intel.com>
References: <cover.1305235993.git.tom.zanussi@intel.com>
Old-Date: Wed, 11 May 2011 09:05:59 -0500
Date: Thu, 12 May 2011 17:04:18 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [KERNEL][linux-yocto PATCH 4/4] emgd: backfix for 2.6.37
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
X-List-Received-Date: Thu, 12 May 2011 22:04:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c b/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
index 48e2cbf..33aa681 100644
--- a/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
+++ b/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
@@ -1955,6 +1955,10 @@ static struct drm_driver driver = {
 		.poll    = drm_poll,
 		.fasync  = drm_fasync,
 	},
+	.pci_driver = {
+		.name     = DRIVER_NAME,
+		.id_table = pciidlist,
+	},
 	.name                = DRIVER_NAME,
 	.desc                = DRIVER_DESC,
 	.date                = DRIVER_DATE,
@@ -1976,7 +1980,7 @@ static int __init emgd_init(void) {
 
 	EMGD_TRACE_ENTER;
 	driver.num_ioctls = emgd_max_ioctl;
-	ret = drm_pci_init(&driver, &emgd_pci_driver);
+	ret = drm_init(&driver);
 	PVRDPFInit();
 	printk(KERN_INFO "[EMGD] drm_init() returning %d\n", ret);
 	EMGD_TRACE_EXIT;
@@ -1988,7 +1992,7 @@ static int __init emgd_init(void) {
  */
 static void __exit emgd_exit(void) {
 	EMGD_TRACE_ENTER;
-	drm_pci_exit(&driver, &emgd_pci_driver);
+	drm_exit(&driver);
 	EMGD_TRACE_EXIT;
 }
 
-- 
1.7.0.4


