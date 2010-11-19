Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9D574C811CF
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Nov 2010 03:21:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="628377098"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2010 03:21:28 -0800
Message-Id: <b6d72820ebb90e03f31cea7530509f23146958ac.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/17] ed: Update to 1.5
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:29 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../ed/{ed-1.4 => ed-1.5}/ed-1.2-build.patch       |    0
 meta/recipes-extended/ed/{ed_1.4.bb => ed_1.5.bb}  |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-extended/ed/{ed-1.4 => ed-1.5}/ed-1.2-build.patch (100%)
 rename meta/recipes-extended/ed/{ed_1.4.bb => ed_1.5.bb} (100%)

diff --git a/meta/recipes-extended/ed/ed-1.4/ed-1.2-build.patch b/meta/recipes-extended/ed/ed-1.5/ed-1.2-build.patch
similarity index 100%
rename from meta/recipes-extended/ed/ed-1.4/ed-1.2-build.patch
rename to meta/recipes-extended/ed/ed-1.5/ed-1.2-build.patch
diff --git a/meta/recipes-extended/ed/ed_1.4.bb b/meta/recipes-extended/ed/ed_1.5.bb
similarity index 100%
rename from meta/recipes-extended/ed/ed_1.4.bb
rename to meta/recipes-extended/ed/ed_1.5.bb
-- 
1.6.3.3


