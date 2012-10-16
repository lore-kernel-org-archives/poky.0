Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35EF1E00292
	for <poky@yoctoproject.org>; Mon, 15 Oct 2012 21:59:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 15 Oct 2012 21:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,593,1344236400"; d="scan'208";a="156591539"
Received: from unknown (HELO localhost) ([10.255.14.132])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Oct 2012 21:59:06 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Mon, 15 Oct 2012 23:59:04 -0500
Message-Id: <cover.1350363132.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] replace lttng with lttng-2.0 in core-tools-profile, v2
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
X-List-Received-Date: Tue, 16 Oct 2012 04:59:08 -0000

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

v2: the current lttng2 recipes don't build for mips.  From the recipes:

  # Due to liburcu not building for MIPS currently this recipe needs to
  # be limited also.
  # So here let us first suppport x86/arm/powerpc platforms now.

NOTE: this patch requires the accompanying oe-core patch to be applied
as well:

http://lists.linuxtogo.org/pipermail/openembedded-core/2012-October/030957.html

The following changes since commit 83448c4b318ce60a54aae24a9a247456fa94caaf:

  documentation: kernel-manual - Fixed typo. (2012-10-15 14:45:16 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/switch-to-lttng2
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/switch-to-lttng2

Tom Zanussi (1):
  packagegroup-core-tools-profile: replace 'legacy' lttng with lttng
    2.0

 .../packagegroup-core-tools-profile.bb             | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

-- 
1.7.11.4


