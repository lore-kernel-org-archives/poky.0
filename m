Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DED8B4C800A3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 12:00:29 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Apr 2011 10:00:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,220,1301900400"; d="scan'208";a="679601327"
Received: from unknown (HELO helios) ([10.255.12.218])
	by fmsmga002.fm.intel.com with SMTP; 15 Apr 2011 10:00:28 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 15 Apr 2011 18:00:21 +0100
Message-Id: <b0e016edb629d8253bb4a587f56c1ecb3787d40d.1302886579.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1302886579.git.paul.eggleton@linux.intel.com>
References: <cover.1302886579.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 15 Apr 2011 17:17:02 +0100
Date: Fri, 15 Apr 2011 18:00:21 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 3/3] netbase: add /etc/network/interfaces file for qemumips & qemuppc
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
X-List-Received-Date: Fri, 15 Apr 2011 17:00:30 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

This fixes the network configuration for qemumips & qemuppc to match the
other qemu* machines.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../netbase/netbase-4.45/qemumips/interfaces       |    8 ++++++++
 .../netbase/netbase-4.45/qemuppc/interfaces        |    8 ++++++++
 2 files changed, 16 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/netbase/netbase-4.45/qemumips/interfaces
 create mode 100644 meta/recipes-core/netbase/netbase-4.45/qemuppc/interfaces

diff --git a/meta/recipes-core/netbase/netbase-4.45/qemumips/interfaces b/meta/recipes-core/netbase/netbase-4.45/qemumips/interfaces
new file mode 100644
index 0000000..f62b9a8
--- /dev/null
+++ b/meta/recipes-core/netbase/netbase-4.45/qemumips/interfaces
@@ -0,0 +1,8 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+
+
diff --git a/meta/recipes-core/netbase/netbase-4.45/qemuppc/interfaces b/meta/recipes-core/netbase/netbase-4.45/qemuppc/interfaces
new file mode 100644
index 0000000..f62b9a8
--- /dev/null
+++ b/meta/recipes-core/netbase/netbase-4.45/qemuppc/interfaces
@@ -0,0 +1,8 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+
+
-- 
1.7.1


