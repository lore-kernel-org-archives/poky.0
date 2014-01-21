Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28781E008A4
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 14:34:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Jan 2014 14:30:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; d="scan'208";a="470375693"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga002.jf.intel.com with ESMTP; 21 Jan 2014 14:34:05 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	Poky <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 14:39:48 -0800
Message-Id: <2486dd26a253908d3fdd5874cf53fb1e72bb9a7f.1390342768.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <67cb4be16feef75539c802c61a71e99278220841.1390342768.git.dvhart@linux.intel.com>
References: <67cb4be16feef75539c802c61a71e99278220841.1390342768.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1390342768.git.dvhart@linux.intel.com>
References: <cover.1390342768.git.dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@intel.com>,
	Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: [PATCH 02/15] i586: Only add the current tune to PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Tue, 21 Jan 2014 22:34:36 -0000

The generic x86 build supports i586 by default, so this specific tune
file technically doesn't add any specific ARCHes to PACKAGE_EXTRA_ARCHS.
For consistency, append the current tune to PACKAGE_EXTRA_ARCHS.

Since we do not have specific tune files for i386 and i486, just drop
them.

These could be added to tune-x86 version if there is a need to
maintain them, but they really do not belong here.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@intel.com>
Cc: Paul Eggleton <paul.eggleton@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Nitin Kamble <nitin.a.kamble@intel.com>
Cc: Mark Hatle <mark.hatle@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/include/tune-i586.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/conf/machine/include/tune-i586.inc b/meta/conf/machine/include/tune-i586.inc
index a315b35..5fbb3c7 100644
--- a/meta/conf/machine/include/tune-i586.inc
+++ b/meta/conf/machine/include/tune-i586.inc
@@ -11,4 +11,4 @@ AVAILTUNES += "i586"
 TUNE_FEATURES_tune-i586 = "${TUNE_FEATURES_tune-x86} i586"
 BASE_LIB_tune-i586 = "lib"
 TUNE_PKGARCH_tune-i586 = "i586"
-PACKAGE_EXTRA_ARCHS_tune-i586 = "${PACKAGE_EXTRA_ARCHS_tune-x86} i386 i486 i586"
+PACKAGE_EXTRA_ARCHS_tune-i586 = "${PACKAGE_EXTRA_ARCHS_tune-x86} i586"
-- 
1.7.9.5


