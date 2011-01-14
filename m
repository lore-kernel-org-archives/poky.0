Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E86ED4C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:49:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jan 2011 14:49:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="697015613"
Received: from unknown (HELO localhost) ([10.255.14.43])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2011 14:49:51 -0800
Message-Id: <cover.1295044979.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Fri, 14 Jan 2011 16:42:59 -0600
Date: Fri, 14 Jan 2011 16:49:48 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto: temporary NO_LIBPERL fix for perf
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
X-List-Received-Date: Fri, 14 Jan 2011 22:49:53 -0000

I'm not familiar enough with the perf recipe to come up with a proper
fix for the problem yet, but this patch at least removes the build
error that recently started happening with the linux-yocto perf
compile.

I'll send a patch re-instating the code it removes once I've
understood the perf recipe and root-caused the problem.  In any case,
it doesn't remove any functionality that was there before - NO_LIBPERL
was always the case, but the code that made that happen just started
blowing up for some reason.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/perf-no-libperl-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/perf-no-libperl-fix

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON

 .../linux-yocto/tools-perf-no-scripting.patch      |   49 ++++++++++++++++++++
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    5 +-
 2 files changed, 52 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-yocto/tools-perf-no-scripting.patch


