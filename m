Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B537E01353
	for <poky@yoctoproject.org>; Tue,  7 Feb 2012 14:50:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2012 14:50:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107498277"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.116])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2012 14:50:20 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 Feb 2012 14:50:17 -0800
Message-Id: <780cbdd8546eca24d4c113b546051d89e7d6b0e4.1328654906.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1328654906.git.sgw@linux.intel.com>
References: <cover.1328654906.git.sgw@linux.intel.com>
In-Reply-To: <cover.1328654906.git.sgw@linux.intel.com>
References: <cover.1328654906.git.sgw@linux.intel.com>
Subject: [PATCH 1/2] task-core-tools-profile: change to match oe-core
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
X-List-Received-Date: Tue, 07 Feb 2012 22:50:20 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 ...s.bbappend => task-core-tools-profile.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/tasks/{task-core-tools.bbappend => task-core-tools-profile.bbappend} (100%)

diff --git a/meta-yocto/recipes-core/tasks/task-core-tools.bbappend b/meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/tasks/task-core-tools.bbappend
rename to meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
-- 
1.7.6.5


