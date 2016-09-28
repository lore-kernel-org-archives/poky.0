Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00A98E00756; Wed, 28 Sep 2016 16:49:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD23AE006C7
	for <poky@yoctoproject.org>; Wed, 28 Sep 2016 16:49:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 28 Sep 2016 16:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,412,1470726000"; d="scan'208";a="1057995923"
Received: from clsulliv.jf.intel.com ([10.7.201.156])
	by orsmga002.jf.intel.com with ESMTP; 28 Sep 2016 16:49:37 -0700
From: California Sullivan <california.l.sullivan@intel.com>
To: poky@yoctoproject.org
Date: Wed, 28 Sep 2016 16:49:26 -0700
Message-Id: <1475106566-18034-1-git-send-email-california.l.sullivan@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [PATCH 1/1] genericx86-64.conf: Add SERIAL_CONSOLES_CHECK = "ttyS0"
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
X-List-Received-Date: Wed, 28 Sep 2016 23:49:42 -0000

Trying to start getty on a non-existent console will spew I/O errors
into auth.log on some hardware. Avoid this behavior by checking that
ttyS0 is a console that exists.

Fixes [YOCTO #10291].

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
Reviewed-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index ceee247..d843fd2 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -8,3 +8,5 @@ require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
 PREFERRED_VERSION_linux-yocto_genericx86-64 ?= "4.8%"
+
+SERIAL_CONSOLES_CHECK = "ttyS0"
-- 
2.5.5


