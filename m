Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 813734C810FE
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 18:56:08 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Nov 2010 16:56:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,203,1288594800"; d="scan'208";a="857923052"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2010 16:56:06 -0800
Message-Id: <1ef3c62e8374c6aac32148887a2a24896a2e59d7.1289868964.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289868964.git.dongxiao.xu@intel.com>
References: <cover.1289868964.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 15 Nov 2010 22:25:13 +0800
To: poky@yoctoproject.org
Subject: [PATCH 7/8] quota: Upgraded to version 4.00-pre1
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
X-List-Received-Date: Tue, 16 Nov 2010 00:56:08 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../quota/{quota_3.17.bb => quota_4.00-pre1.bb}    |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-extended/quota/{quota_3.17.bb => quota_4.00-pre1.bb} (100%)

diff --git a/meta/recipes-extended/quota/quota_3.17.bb b/meta/recipes-extended/quota/quota_4.00-pre1.bb
similarity index 100%
rename from meta/recipes-extended/quota/quota_3.17.bb
rename to meta/recipes-extended/quota/quota_4.00-pre1.bb
-- 
1.6.3.3


