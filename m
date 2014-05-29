Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 102E6E00B68; Thu, 29 May 2014 09:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C16E00A2F
	for <poky@yoctoproject.org>; Thu, 29 May 2014 09:49:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 May 2014 09:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,935,1392192000"; d="scan'208";a="438639082"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.12.174])
	by azsmga001.ch.intel.com with ESMTP; 29 May 2014 09:47:40 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 29 May 2014 09:47:40 -0700
Message-Id: <1401382060-29325-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] busybox: remove poky override
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
X-List-Received-Date: Thu, 29 May 2014 16:49:24 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/recipes-core/busybox/busybox_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/recipes-core/busybox/busybox_%.bbappend b/meta-yocto/recipes-core/busybox/busybox_%.bbappend
index ffe8631..1b83e48 100644
--- a/meta-yocto/recipes-core/busybox/busybox_%.bbappend
+++ b/meta-yocto/recipes-core/busybox/busybox_%.bbappend
@@ -1,2 +1,2 @@
-FILESEXTRAPATHS_prepend_poky := "${THISDIR}/${P}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${P}:"
 
-- 
1.8.3.1


