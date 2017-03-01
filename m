Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E996E00826; Wed,  1 Mar 2017 15:54:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50C74E0082A
	for <poky@yoctoproject.org>; Wed,  1 Mar 2017 15:54:52 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Mar 2017 15:54:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,228,1484035200"; d="scan'208";a="71746567"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2017 15:54:51 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  1 Mar 2017 23:51:36 +0000
Message-Id: <96812656493e1dfa731d3b2e053661a97b0887b0.1488411849.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
References: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
References: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/4] genericx86: Updates PREFERRED_VERSION to use kernel 4.10
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
X-List-Received-Date: Wed, 01 Mar 2017 23:54:53 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 04a7e0b..34a52c3 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -9,4 +9,4 @@ require conf/machine/include/genericx86-common.inc
 
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
 
-PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.8%"
+PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.10%"
-- 
2.10.2


