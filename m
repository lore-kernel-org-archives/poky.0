Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C81E008FF; Wed, 12 Jul 2017 12:11:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5523FE0084A
	for <poky@yoctoproject.org>; Wed, 12 Jul 2017 12:11:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 12 Jul 2017 12:11:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,351,1496127600"; d="scan'208";a="110595544"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.21.85])
	by orsmga002.jf.intel.com with ESMTP; 12 Jul 2017 12:11:40 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Jul 2017 20:11:36 +0100
Message-Id: <20170712191136.8044-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.9.4
Subject: [PATCH] mpc8315e-rdb: add wic.bmap to IMAGE_FSTYPES
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
X-List-Received-Date: Wed, 12 Jul 2017 19:11:43 -0000

In order to match the other meta-yocto-bsp MACHINE definitions add wic.bmap
to the produced images.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 2c4fdc6..ce50152 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -30,6 +30,6 @@ MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 IMAGE_FSTYPES ?= "jffs2 tar.bz2"
 JFFS2_ERASEBLOCK = "0x4000"
 
-IMAGE_FSTYPES += "wic"
+IMAGE_FSTYPES += "wic wic.bmap"
 WKS_FILE ?= 'mpc8315e-rdb.wks'
 IMAGE_BOOT_FILES ?= "u-boot.bin uImage uImage-mpc8315erdb.dtb;dtb"
-- 
2.9.4


