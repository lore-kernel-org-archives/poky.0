Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D4264C811C4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 13:56:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Dec 2010 11:56:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="685959880"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.164])
	by orsmga001.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
Message-Id: <e46db28d70f4ec5e753d25582d238a715f265a82.1292010816.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292010816.git.dvhart@linux.intel.com>
References: <cover.1292010816.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 10:54:11 -0800
To: sgw@linux.intel.com,poky@yoctoproject.org
Subject: [PATCH 2/5] image-swab: Correct PARALLEL_MAKE typo
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
X-List-Received-Date: Fri, 10 Dec 2010 19:56:07 -0000

An investigation into undocumented variables uncovered a mispelled
instance of PARALLEL_MAKE in image-swab.bbclass.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/image-swab.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image-swab.bbclass b/meta/classes/image-swab.bbclass
index 554867b..fc1eccb 100644
--- a/meta/classes/image-swab.bbclass
+++ b/meta/classes/image-swab.bbclass
@@ -31,7 +31,7 @@ PARALLEL_MAKE_pn-rpm = ""
 PARALLEL_MAKE_pn-tcl = ""
 PARALLEL_MAKE_pn-beecrypt = ""
 PARALLEL_MAKE_pn-curl = ""
-PARALELL_MAKE_pn-gmp = ""
+PARALLEL_MAKE_pn-gmp = ""
 PARALLEL_MAKE_pn-libmpc = ""
 PARALLEL_MAKE_pn-libxslt = ""
 PARALLEL_MAKE_pn-lzo = ""
-- 
1.7.1


