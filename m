Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5EAD14C810E6
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 18:55:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Nov 2010 16:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,203,1288594800"; d="scan'208";a="677829386"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2010 16:55:58 -0800
Message-Id: <ec1c3b7c1087d18a6a8c352da2e72d8c825e12c6.1289868964.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289868964.git.dongxiao.xu@intel.com>
References: <cover.1289868964.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 15 Nov 2010 21:16:28 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/8] neon: Upgraded to version 0.29.5
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
X-List-Received-Date: Tue, 16 Nov 2010 00:55:59 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{neon-0.29.3 => neon-0.29.5}/pkgconfig.patch   |    0
 .../neon/{neon_0.29.3.bb => neon_0.29.5.bb}        |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-support/neon/{neon-0.29.3 => neon-0.29.5}/pkgconfig.patch (100%)
 rename meta/recipes-support/neon/{neon_0.29.3.bb => neon_0.29.5.bb} (100%)

diff --git a/meta/recipes-support/neon/neon-0.29.3/pkgconfig.patch b/meta/recipes-support/neon/neon-0.29.5/pkgconfig.patch
similarity index 100%
rename from meta/recipes-support/neon/neon-0.29.3/pkgconfig.patch
rename to meta/recipes-support/neon/neon-0.29.5/pkgconfig.patch
diff --git a/meta/recipes-support/neon/neon_0.29.3.bb b/meta/recipes-support/neon/neon_0.29.5.bb
similarity index 100%
rename from meta/recipes-support/neon/neon_0.29.3.bb
rename to meta/recipes-support/neon/neon_0.29.5.bb
-- 
1.6.3.3


