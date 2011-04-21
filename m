Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54D5B4C80050
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 02:55:05 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Apr 2011 00:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,250,1301900400"; d="scan'208";a="681864687"
Received: from unknown (HELO localhost) ([10.255.13.76])
	by fmsmga002.fm.intel.com with ESMTP; 21 Apr 2011 00:55:04 -0700
Message-Id: <cover.1303372141.git.tom.zanussi@intel.com>
Old-Date: Thu, 21 Apr 2011 02:49:01 -0500
Date: Thu, 21 Apr 2011  2:54:55 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] fix for bug 994 (host infection in compile_perf)
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
X-List-Received-Date: Thu, 21 Apr 2011 07:55:05 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

I haven't been able to reproduce the build failures even with libnewt-devel
installed, so please test and make sure it fixes the problems you're
seeing before applying, Saul.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/bugfix-994
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bugfix-994

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  linux-tools.inc: turn off newt and dwarf for perf

 meta/recipes-kernel/linux/linux-tools.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


