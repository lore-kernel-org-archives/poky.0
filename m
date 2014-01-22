Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 760E6E0089B
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 16:53:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2014 16:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; d="scan'208";a="442600445"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2014 16:53:09 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	Poky <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 16:58:52 -0800
Message-Id: <7908e39fdfb727ef7f02c7401da6acdcf5b04e06.1390351667.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <e6c72bf867006ab15d62d0beb1cd8aafe19db72a.1390351667.git.dvhart@linux.intel.com>
References: <e6c72bf867006ab15d62d0beb1cd8aafe19db72a.1390351667.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1390351667.git.dvhart@linux.intel.com>
References: <cover.1390351667.git.dvhart@linux.intel.com>
X-Mailman-Approved-At: Tue, 21 Jan 2014 19:06:28 -0800
Cc: Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: [PATCH 07/19] tune: Remove tune-x86_64.inc
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
X-List-Received-Date: Wed, 22 Jan 2014 00:53:13 -0000

The tune-x86_64.inc file is conceptually flawed. x86_64 is more akin to
the x86 and x86-32 ABIs defined in arch-x86.inc than it is a concrete
tune file, such as i586 or core2 - to the extent that everything but the
default tune is defined in the arch-x86.inc file. This becomes very
apparant when attempting to include tune-x86_64.inc in the x86 tune
hierarchy.

Remove the tune-x86_64.inc tune file in favor of it being an ABI
definition in arch-x86.inc and relying on the linear hierarchy of
concrete cpu-types in tune-i586, tune-core2, and tune-corei7.

core2_64 should suffice in lieu of x86_64 for all but a couple esoteric
corner cases involving older pre-core2 CPUs. In these cases, if they
exist at all, the BSP can replace the include tune-x86_64.inc with
arch-x86.inc and set the default tune to x86_64.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Nitin Kamble <nitin.a.kamble@intel.com>
Cc: Mark Hatle <mark.hatle@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Martin Jansa <martin.jansa@gmail.com>
---
 meta/conf/machine/include/tune-x86_64.inc |    4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 meta/conf/machine/include/tune-x86_64.inc

diff --git a/meta/conf/machine/include/tune-x86_64.inc b/meta/conf/machine/include/tune-x86_64.inc
deleted file mode 100644
index ae48124..0000000
--- a/meta/conf/machine/include/tune-x86_64.inc
+++ /dev/null
@@ -1,4 +0,0 @@
-DEFAULTTUNE ?= "x86-64"
-
-require conf/machine/include/x86/arch-x86.inc
-
-- 
1.7.9.5


