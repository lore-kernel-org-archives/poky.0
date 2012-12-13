Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF455E01443
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:54 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2012 20:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="263328182"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2012 20:56:53 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:37 -0600
Message-Id: <977b917a79fc4e8176fd00c5f623e9f09fb45465.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 08/12] yocto-kernel: don't list comments in config and patch listings
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

After adding comments to the config and patch templates, I noticed
they were displayed as items, which they shouldn't be.  This prevents
them from being displayed.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 0b7e69b..272c3eb 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -168,7 +168,7 @@ def read_config_items(scripts_path, machine):
     lines = f.readlines()
     for line in lines:
         s = line.strip()
-        if s:
+        if s and not s.startswith("#"):
             config_items.append(s)
     f.close()
 
@@ -399,7 +399,7 @@ def read_patch_items(scripts_path, machine):
     lines = f.readlines()
     for line in lines:
         s = line.strip()
-        if s:
+        if s and not s.startswith("#"):
             fields = s.split()
             if not fields[0] == "patch":
                 continue
-- 
1.7.11.4


