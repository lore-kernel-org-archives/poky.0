Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC54E0089C
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 16:53:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2014 16:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; d="scan'208";a="442600451"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2014 16:53:09 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	Poky <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 16:58:55 -0800
Message-Id: <0cbe143b3cb83d2fb8c8c652e29c71029d8deda8.1390351667.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <e6c72bf867006ab15d62d0beb1cd8aafe19db72a.1390351667.git.dvhart@linux.intel.com>
References: <e6c72bf867006ab15d62d0beb1cd8aafe19db72a.1390351667.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1390351667.git.dvhart@linux.intel.com>
References: <cover.1390351667.git.dvhart@linux.intel.com>
X-Mailman-Approved-At: Tue, 21 Jan 2014 19:06:28 -0800
Cc: Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: [PATCH 10/19] tune: README: Typographical corrections
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

No new content, just correcting a few typographical errors.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Nitin Kamble <nitin.a.kamble@intel.com>
Cc: Mark Hatle <mark.hatle@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Martin Jansa <martin.jansa@gmail.com>
---
 meta/conf/machine/include/README |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/conf/machine/include/README b/meta/conf/machine/include/README
index 6c390ad..d66130a 100644
--- a/meta/conf/machine/include/README
+++ b/meta/conf/machine/include/README
@@ -53,10 +53,10 @@ list should be dynamic! i.e.
 ${@bb.utils.contains("TUNE_FEATURES", "feature", "cflag", "!cflag", d)}
 
 TUNE_ARCH - The GNU canonical arch for a specific architecture.  i.e.
-arm, armeb, mips, mips64, etc.  This value is by bitbake to setup
+arm, armeb, mips, mips64, etc.  This value is used by bitbake to setup
 configure. TUNE_ARCH definitions are specific to a given architecture.
-They may be a single static definitions, or may be dynamically adjusted.
-See each architectures README for details for that CPU family.
+They may be a single static definition, or may be dynamically adjusted.
+See each architecture's README for details for that CPU family.
 
 TUNE_PKGARCH - The package architecture used by the packaging systems to
 define the architecture, abi and tuning of a particular package.
-- 
1.7.9.5


