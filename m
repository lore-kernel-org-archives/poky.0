Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E2D1E0027E
	for <poky@yoctoproject.org>; Fri, 12 Oct 2012 12:53:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Oct 2012 12:53:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,577,1344236400"; d="scan'208";a="155640371"
Received: from unknown (HELO localhost) ([10.255.14.130])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Oct 2012 12:53:35 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, bruce.ashfield@windriver.com, dvhart@linux.intel.com
Date: Fri, 12 Oct 2012 14:53:33 -0500
Message-Id: <cover.1350070372.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] replace lttng with lttng-2.0 in core-tools-profile
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Oct 2012 19:53:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The current packagegroup-core-tools-profile pulls in 'legacy' lttng
packages, which are useless with the linux-yocto kernels since those
don't include lttng support.

lttng-2.0 does seem to work, if the patch for lttng-modules that I just
sent to oe-core is applied as well (lttng-modules: update SRCREV and
remove is_compat_task).

I've only done minimal testing using qemux86, but even so it should at
least be better than the curent situation.

Sending this patch to poky instead of oe-core since it could be that
legacy lttng is what's being used by most people, but it clearly doesn't
work for yocto.

The following changes since commit 0260bb5c6978839c068007fcff2f704937805faf:

  gitignore: Fix for poky repository (2012-10-11 13:52:14 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/lttng-fixes.0
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/lttng-fixes.0

Tom Zanussi (2):
  lttng-modules: update SRCREV and remove is_compat_task patch
  packagegroup-core-tools-profile: replace 'legacy' lttng with lttng
    2.0

 .../packagegroup-core-tools-profile.bb             |  9 ++---
 ...ls-protect-is_compat_task-from-redefiniti.patch | 41 ----------------------
 .../lttng-2.0/lttng-modules_2.0.5.bb               |  9 +++--
 3 files changed, 9 insertions(+), 50 deletions(-)
 delete mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules/lttng-sycalls-protect-is_compat_task-from-redefiniti.patch

-- 
1.7.11.4


