Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F7B7E00B1E; Tue,  3 Jun 2014 07:52:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17ACEE00B1E
	for <poky@yoctoproject.org>; Tue,  3 Jun 2014 07:52:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jun 2014 07:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,965,1392192000"; d="scan'208";a="541808837"
Received: from kmaligas-mobl1.gar.corp.intel.com (HELO swold-linux.bigsur.com)
	([10.255.12.167])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2014 07:52:52 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jun 2014 07:52:51 -0700
Message-Id: <1401807171-30011-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1401807171-30011-1-git-send-email-sgw@linux.intel.com>
References: <1401807171-30011-1-git-send-email-sgw@linux.intel.com>
Subject: [PATCH 2/2 v2] busybox: fix meta-yocto's bbappend's FILESEXTRAPATH
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
X-List-Received-Date: Tue, 03 Jun 2014 14:52:59 -0000

The FILESEXTRAPATH was not getting used correctly since our distro
OVERRIDE is for poky-tiny, not poky, so just remove it, also we are
not using a version directory so ensure we get correct BPN (Base Package
Name).

[YOCTO #6353]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/recipes-core/busybox/busybox_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/recipes-core/busybox/busybox_%.bbappend b/meta-yocto/recipes-core/busybox/busybox_%.bbappend
index ffe8631..0005787 100644
--- a/meta-yocto/recipes-core/busybox/busybox_%.bbappend
+++ b/meta-yocto/recipes-core/busybox/busybox_%.bbappend
@@ -1,2 +1,2 @@
-FILESEXTRAPATHS_prepend_poky := "${THISDIR}/${P}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
 
-- 
1.8.3.1


