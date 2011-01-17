Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B64E64C8085F
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:09:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2011 10:09:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="593764418"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2011 10:09:26 -0800
Message-Id: <cb1405f6b477310ef5f50f65def2cb6b5dc8413b.1295288961.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1295288961.git.jessica.zhang@intel.com>
References: <cover.1295288961.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Mon, 17 Jan 2011 10:25:47 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] remove sanity check for SDK_ARCH=i686 due to recent fixes in cross toolchain areas, etc. the old issue no longer exists
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
X-List-Received-Date: Mon, 17 Jan 2011 18:09:49 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 meta/classes/sanity.bbclass |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 9d183e3..c66015e 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -196,9 +196,6 @@ def check_sanity(e):
     if not oes_bb_conf:
         messages = messages + 'You do not include OpenEmbeddeds version of conf/bitbake.conf. This means your environment is misconfigured, in particular check BBPATH.\n'
 
-    if data.getVar('SDK_ARCH', e.data, True) == 'i686':
-        messages = messages + '"Please set SDKMACHINE to i586. It is currently defaulting to the build machine architecture of i686 and this is known to have issues (see local.conf).\n'
-
     nolibs = data.getVar('NO32LIBS', e.data, True)
     if not nolibs:
         lib32path = '/lib'
-- 
1.7.0.4


