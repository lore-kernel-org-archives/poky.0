Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35DB64C81002
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:25 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Nov 2010 03:21:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="350821146"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by azsmga001.ch.intel.com with ESMTP; 19 Nov 2010 03:21:23 -0800
Message-Id: <f81aa98ef76984fcb48e7fad799ce6ab883e17fb.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Thu, 18 Nov 2010 08:38:52 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/17] libgpg-error: Update to 1.9
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:25 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../pkgconfig.patch                                |    0
 .../{libgpg-error_1.8.bb => libgpg-error_1.9.bb}   |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-support/libgpg-error/{libgpg-error-1.8 => libgpg-error-1.9}/pkgconfig.patch (100%)
 rename meta/recipes-support/libgpg-error/{libgpg-error_1.8.bb => libgpg-error_1.9.bb} (100%)

diff --git a/meta/recipes-support/libgpg-error/libgpg-error-1.8/pkgconfig.patch b/meta/recipes-support/libgpg-error/libgpg-error-1.9/pkgconfig.patch
similarity index 100%
rename from meta/recipes-support/libgpg-error/libgpg-error-1.8/pkgconfig.patch
rename to meta/recipes-support/libgpg-error/libgpg-error-1.9/pkgconfig.patch
diff --git a/meta/recipes-support/libgpg-error/libgpg-error_1.8.bb b/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
similarity index 100%
rename from meta/recipes-support/libgpg-error/libgpg-error_1.8.bb
rename to meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
-- 
1.6.3.3


