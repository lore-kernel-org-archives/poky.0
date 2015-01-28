Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C53E0087C; Wed, 28 Jan 2015 07:49:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A149BE008DC
	for <poky@yoctoproject.org>; Wed, 28 Jan 2015 07:49:41 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2015 07:49:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,481,1418112000"; d="scan'208";a="669144030"
Received: from ssandhu3-mobl1.amr.corp.intel.com (HELO localhost)
	([10.254.48.171])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2015 07:49:39 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: akuster808@gmail.com,
	poky@yoctoproject.org
Date: Wed, 28 Jan 2015 09:49:39 -0600
Message-Id: <ac18bafa28441d0434cc8a7d13dcfd43b3ed057a.1422459700.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1422459700.git.tom.zanussi@linux.intel.com>
References: <cover.1422459700.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1 v2] yocto-bsp: Add branch to SRC_URI for custom kernels
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
X-List-Received-Date: Wed, 28 Jan 2015 15:49:49 -0000

Without 'branch' in the SRC_URI, a SRCREV specified for a non-master
KBRANCH will result in a fetch failure since the branch tested by the
fetcher will default to master, which doesn't contain the SRCREV.
This fixes the problem by adding branch=KBRANCH to the SRC_URI.

Fixes [Yocto #6518].

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"
index 6d3cc6f..c85e731 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"	
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"	
@@ -31,9 +31,9 @@ inherit kernel
 require recipes-kernel/linux/linux-yocto.inc
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
-SRC_URI = "{{=custom_kernel_remote_path}};protocol=git;bareclone=1"
+SRC_URI = "{{=custom_kernel_remote_path}};protocol=git;bareclone=1;branch=${KBRANCH}"
 {{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
-SRC_URI = "git://{{=custom_kernel_local_path}};protocol=file;bareclone=1"
+SRC_URI = "git://{{=custom_kernel_local_path}};protocol=file;bareclone=1;branch=${KBRANCH}"
 
 SRC_URI += "file://defconfig"
 
-- 
1.9.3


