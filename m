Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6259E013B5
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 10:31:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Nov 2011 10:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="72390365"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.12.16])
	by orsmga002.jf.intel.com with ESMTP; 08 Nov 2011 10:31:31 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Nov 2011 10:31:29 -0800
Message-Id: <26f40314be2c476127ba7b33b9aa8116da15dbbb.1320777037.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320777037.git.josh@linux.intel.com>
References: <cover.1320777037.git.josh@linux.intel.com>
In-Reply-To: <cover.1320777037.git.josh@linux.intel.com>
References: <cover.1320777037.git.josh@linux.intel.com>
Subject: [PATCH 1/1] clutter-1.8: this should be a bbappend
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
X-List-Received-Date: Tue, 08 Nov 2011 18:31:32 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 ...ter-1.8_1.8.0.bb => clutter-1.8_1.8.0.bbappend} |    0
 1 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-graphics/clutter/{clutter-1.8_1.8.0.bb => clutter-1.8_1.8.0.bbappend} (100%)

diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb b/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
similarity index 100%
rename from meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb
rename to meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
-- 
1.7.7


