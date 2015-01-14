Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3541DE00853; Wed, 14 Jan 2015 06:57:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14BBCE0084D
	for <poky@yoctoproject.org>; Wed, 14 Jan 2015 06:57:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jan 2015 06:57:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,756,1413270000"; d="scan'208";a="637206496"
Received: from sentry.rb.intel.com ([10.237.105.37])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2015 06:57:34 -0800
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Jan 2015 16:57:23 +0200
Message-Id: <a8538c8501c4b871c4b0bc59f27ab3007ce87a49.1421247317.git.cristian.iorga@intel.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1421247317.git.cristian.iorga@intel.com>
References: <cover.1421247317.git.cristian.iorga@intel.com>
In-Reply-To: <cover.1421247317.git.cristian.iorga@intel.com>
References: <cover.1421247317.git.cristian.iorga@intel.com>
Subject: [PATCH 1/1] poky.conf: add support for running mips64 qemu machine
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
X-List-Received-Date: Wed, 14 Jan 2015 14:57:38 -0000

qemumips64 machine lacks a qemu system emulator,
so add it.

Fix for [YOCTO #7082].

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 80dc853..48a8cf5 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -45,8 +45,8 @@ DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
 
 TCLIBCAPPEND = ""
 
-QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel ppc x86_64"
-# Other QEMU_TARGETS "mips64 mips64el sh4"
+QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel mips64 ppc x86_64"
+# Other QEMU_TARGETS "mips64el sh4"
 
 PREMIRRORS ??= "\
 bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
-- 
2.1.0


