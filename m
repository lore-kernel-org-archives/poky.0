Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1BA4E0054F
	for <poky@yoctoproject.org>; Mon, 31 Oct 2011 18:57:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Oct 2011 18:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,435,1315206000"; d="scan'208";a="79917383"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.52])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2011 18:57:02 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Nov 2011 10:11:28 +0800
Message-Id: <9186e7a3b40e2d09f9f0b8b369015a7d8e219bd3.1320113401.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1320113401.git.dongxiao.xu@intel.com>
References: <cover.1320113401.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1320113401.git.dongxiao.xu@intel.com>
References: <cover.1320113401.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] netbase.bbappend: Change to version 4.46 due to the upgrade
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
X-List-Received-Date: Tue, 01 Nov 2011 01:57:03 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../beagleboard/interfaces                         |    0
 ...netbase_4.45.bbappend => netbase_4.46.bbappend} |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/netbase/{netbase-4.45 => netbase-4.46}/beagleboard/interfaces (100%)
 rename meta-yocto/recipes-core/netbase/{netbase_4.45.bbappend => netbase_4.46.bbappend} (100%)

diff --git a/meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces b/meta-yocto/recipes-core/netbase/netbase-4.46/beagleboard/interfaces
similarity index 100%
rename from meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
rename to meta-yocto/recipes-core/netbase/netbase-4.46/beagleboard/interfaces
diff --git a/meta-yocto/recipes-core/netbase/netbase_4.45.bbappend b/meta-yocto/recipes-core/netbase/netbase_4.46.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
rename to meta-yocto/recipes-core/netbase/netbase_4.46.bbappend
-- 
1.7.1


