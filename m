Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80699E006E4
	for <poky@yoctoproject.org>; Tue, 13 Sep 2011 23:06:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2011 23:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48201510"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.52])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2011 23:06:23 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Sep 2011 14:12:01 +0800
Message-Id: <100825e3b14d19ab433806dd156ca7065b6d682e.1315980532.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1315980532.git.dongxiao.xu@intel.com>
References: <cover.1315980532.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1315980532.git.dongxiao.xu@intel.com>
References: <cover.1315980532.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] local.conf: add MACHINE override for multilib
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000

We need to override MACHINE type to differentiate the normal package and
multilib package when PACKAGE_ARCH == MACHINE_ARCH.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta-yocto/conf/local.conf.sample.extended |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index a42774c..b3c4016 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -110,6 +110,7 @@
 #require conf/multilib.conf
 #MULTILIBS = "multilib:lib32"
 #DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
+#MACHINE_virtclass-multilib-lib32 = "qemux86"
 
 # The network based PR service host and port
 #PRSERV_HOST = "localhost"
-- 
1.7.1


