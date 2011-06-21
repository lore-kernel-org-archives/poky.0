Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D68D94C80AC5
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 20:05:53 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jun 2011 18:05:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,397,1304319600"; d="scan'208";a="18635232"
Received: from nbuild2.sc.intel.com ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2011 18:05:53 -0700
From: nitin.a.kamble@intel.com
To: poky@yoctoproject.org, dvhart@linux.intel.com, bruce.ashfield@windriver.com
Date: Mon, 20 Jun 2011 18:05:51 -0700
Message-Id: <20ad0e846ce270a3e8363f80705aa1d80e4903fa.1308618114.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1308618114.git.nitin.a.kamble@intel.com>
References: <cover.1308618114.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] btrfs.scc, cfg: add a new feature which enables btrfs kernel configuration
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
X-List-Received-Date: Tue, 21 Jun 2011 01:05:54 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/cfg/kernel-cache/cfg/btrfs.cfg |    2 ++
 meta/cfg/kernel-cache/cfg/btrfs.scc |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.scc

diff --git a/meta/cfg/kernel-cache/cfg/btrfs.cfg b/meta/cfg/kernel-cache/cfg/btrfs.cfg
new file mode 100644
index 0000000..d727f20
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/btrfs.cfg
@@ -0,0 +1,2 @@
+CONFIG_BTRFS_FS=y
+CONFIG_BTRFS_FS_POSIX_ACL=y
diff --git a/meta/cfg/kernel-cache/cfg/btrfs.scc b/meta/cfg/kernel-cache/cfg/btrfs.scc
new file mode 100644
index 0000000..cf18a2e
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/btrfs.scc
@@ -0,0 +1 @@
+kconf non-hardware btrfs.cfg
-- 
1.7.4.4


