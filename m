Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BD0D4C8108C
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Dec 2010 21:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="683063430"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2010 21:55:33 -0800
Message-Id: <546ba2fc27f5abed1e47b14d8c855015ca697781.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:34 -0000

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


