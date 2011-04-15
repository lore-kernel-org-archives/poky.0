Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36CA94C800A2
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 12:00:24 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Apr 2011 10:00:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,220,1301900400"; d="scan'208";a="910143314"
Received: from unknown (HELO helios) ([10.255.12.218])
	by fmsmga001.fm.intel.com with SMTP; 15 Apr 2011 10:00:22 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 15 Apr 2011 18:00:15 +0100
Message-Id: <28086a0fe35538a3aecb00ed405d5cb5a20bcae1.1302886579.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1302886579.git.paul.eggleton@linux.intel.com>
References: <cover.1302886579.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 15 Apr 2011 17:11:49 +0100
Date: Fri, 15 Apr 2011 18:00:15 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/3] netbase: automatically bring up eth0
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
X-List-Received-Date: Fri, 15 Apr 2011 17:00:24 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

This avoids manual configuration for those machines that do not override
the default /etc/network/interfaces file.

Fixes [YOCTO #875]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/netbase/netbase-4.45/interfaces |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/netbase/netbase-4.45/interfaces b/meta/recipes-core/netbase/netbase-4.45/interfaces
index b06924f..0acf4cf 100644
--- a/meta/recipes-core/netbase/netbase-4.45/interfaces
+++ b/meta/recipes-core/netbase/netbase-4.45/interfaces
@@ -14,6 +14,7 @@ iface wlan0 inet dhcp
 iface atml0 inet dhcp
 
 # Wired or wireless interfaces
+auto eth0
 iface eth0 inet dhcp
 iface eth1 inet dhcp
 
-- 
1.7.1


