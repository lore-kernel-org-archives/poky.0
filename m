Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957E7E01409
	for <poky@yoctoproject.org>; Wed,  3 Jul 2013 13:14:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2013 13:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,990,1363158000"; d="scan'208";a="360127652"
Received: from unknown (HELO localhost) ([10.255.13.118])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2013 13:14:31 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Wed,  3 Jul 2013 15:13:34 -0500
Message-Id: <c13beb43d7b6612d0aad6763ce013f3ce990c17b.1372882015.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <f2aef920b8cd8581e46edbd38dfc386826facd00.1372882015.git.tom.zanussi@linux.intel.com>
References: <f2aef920b8cd8581e46edbd38dfc386826facd00.1372882015.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1372882015.git.tom.zanussi@linux.intel.com>
References: <cover.1372882015.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 2/2] yocto-kernel: enforce exact match for BBLAYERS
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
X-List-Received-Date: Wed, 03 Jul 2013 20:14:02 -0000

The current code uses .startswith to find BBLAYERS, which causes false
positives when other variables such as BBLAYERS_NON_REMOVABLE exist.

This forces an exact match instead of a partial match.

Fixes [YOCTO #4743].

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/kernel.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 94ae950..c3592a3 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -54,7 +54,8 @@ def find_bblayers(scripts_path):
     in_bblayers = False
     for line in lines:
         line = line.strip()
-        if line.strip().startswith("BBLAYERS"):
+        tokens = line.split()
+        if len(tokens) > 0 and tokens[0] == 'BBLAYERS':
             bblayers_lines.append(line)
             in_bblayers = True
             quotes = line.strip().count('"')
-- 
1.7.11.4


