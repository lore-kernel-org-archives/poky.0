Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D72A44C810CE
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:31:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 21:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="683480026"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 21:31:53 -0800
Message-Id: <a6f57123a32a41e09c316f8adf7563b04a156b6b.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Sun, 28 Nov 2010 16:57:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/14] ethtool: Update to 2.6.36
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
X-List-Received-Date: Fri, 03 Dec 2010 05:31:55 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../{ethtool_2.6.34.bb => ethtool_2.6.36.bb}       |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-extended/ethtool/{ethtool_2.6.34.bb => ethtool_2.6.36.bb} (100%)

diff --git a/meta/recipes-extended/ethtool/ethtool_2.6.34.bb b/meta/recipes-extended/ethtool/ethtool_2.6.36.bb
similarity index 100%
rename from meta/recipes-extended/ethtool/ethtool_2.6.34.bb
rename to meta/recipes-extended/ethtool/ethtool_2.6.36.bb
-- 
1.7.0.4


