Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9DAA4C80ABC
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 14:52:23 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Apr 2011 12:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="426620345"
Received: from unknown (HELO localhost) ([10.255.13.11])
	by azsmga001.ch.intel.com with ESMTP; 27 Apr 2011 12:52:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Apr 2011 12:52:01 -0700
Message-Id: <d3ff98b2601d7fc083ec33e278d90c890ff6872c.1303933909.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
References: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <cecde52a0e163439e971f00c9c55aa38335ad3b6.1303933909.git.dvhart@linux.intel.com>
References: <cecde52a0e163439e971f00c9c55aa38335ad3b6.1303933909.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] n450: use linux-yocto (2.6.37) by default
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
X-List-Received-Date: Wed, 27 Apr 2011 19:52:24 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index c06cb6c..f9cf4f2 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -9,7 +9,7 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0" 
 APPEND += "console=ttyS0,115200 console=tty0" 
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 # Ensure the bsp packages are installed
 MACHINE_EXTRA_RRECOMMENDS += " n450-audio "
-- 
1.7.1


