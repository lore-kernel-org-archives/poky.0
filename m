Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id EAE884C81146
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:47:18 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 00:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="349803970"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdai-0007lU-1c
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:08 +0800
Message-Id: <cbd2deec7284c287fec3463bb923724ece9979b9.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 14:01:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 8/9] sysstat: upgrade to version 9.1.5
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
X-List-Received-Date: Wed, 17 Nov 2010 08:47:19 -0000

from 9.1.4

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../sysstat/{sysstat_9.1.4.bb => sysstat_9.1.5.bb} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-extended/sysstat/{sysstat_9.1.4.bb => sysstat_9.1.5.bb} (100%)

diff --git a/meta/recipes-extended/sysstat/sysstat_9.1.4.bb b/meta/recipes-extended/sysstat/sysstat_9.1.5.bb
similarity index 100%
rename from meta/recipes-extended/sysstat/sysstat_9.1.4.bb
rename to meta/recipes-extended/sysstat/sysstat_9.1.5.bb
-- 
1.7.0


