Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FC30E00D48; Wed, 25 May 2016 11:33:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E21E00D45
	for <poky@yoctoproject.org>; Wed, 25 May 2016 11:33:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 25 May 2016 11:33:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,364,1459839600"; d="scan'208";a="962277700"
Received: from spmorimo-mobl3.amr.corp.intel.com (HELO localhost)
	([10.254.125.102])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2016 11:33:04 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	alejandro.hernandez@intel.com
Date: Wed, 25 May 2016 13:32:49 -0500
Message-Id: <35b099a9b225bf1d5f79f73fb7a10d6d272ef2fb.1464119315.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
References: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1464119315.git.tom.zanussi@linux.intel.com>
References: <cover.1464119315.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 4/4] linux-yocto/4.4: Make standard/intel branches available
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
X-List-Received-Date: Wed, 25 May 2016 18:33:07 -0000

meta-yocto-bsp BSPs inherit SRCREV_meta - update it to include some
new branches for the BSPs there.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 meta/recipes-kernel/linux/linux-yocto_4.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto_4.4.bb b/meta/recipes-kernel/linux/linux-yocto_4.4.bb
index b74903e..502e491 100644
--- a/meta/recipes-kernel/linux/linux-yocto_4.4.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_4.4.bb
@@ -19,7 +19,7 @@ SRCREV_machine_qemux86 ?= "b18090556c1d1b449233cd555c27a04d38272d6d"
 SRCREV_machine_qemux86-64 ?= "b18090556c1d1b449233cd555c27a04d38272d6d"
 SRCREV_machine_qemumips64 ?= "3a1c6d7576908a2dd21746b1d4ab4f43b83cd824"
 SRCREV_machine ?= "b18090556c1d1b449233cd555c27a04d38272d6d"
-SRCREV_meta ?= "9ab4787fe2aea2ae0fcc31a5e067eaba19ef64c8"
+SRCREV_meta ?= "8f2a3ab2cd6f941052655e175f6e283e2880e562"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto-4.4.git;name=machine;branch=${KBRANCH}; \
            git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-4.4;destsuffix=${KMETA}"
-- 
1.9.3


