Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B6A34C80052
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 23:59:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Nov 2010 21:59:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,234,1288594800"; d="scan'208";a="629016647"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2010 21:59:00 -0800
Message-Id: <cover.1290405852.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 22 Nov 2010 14:04:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1][RFC] Optimize file parsing speed
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
X-List-Received-Date: Mon, 22 Nov 2010 05:59:01 -0000

Hi Richard,

I found that when parsing bitbake files, most of the variables in
d.keys() are in distro_tracking_fields.inc, and they are not used in
normal build.

This pull request moves some distro related functions in
utility-tasks.bbclass into distrodata.bbclass, and remove the inclusion
of distro_tracking_fields.inc from poky.conf. This could gain about 25%
parsing time saving.

Please help to review and pull. Thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/perf
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/perf

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  utility-tasks.bbclass: Move distro related tasks to
    distrodata.bbclass

 meta/classes/distrodata.bbclass    |  440 +++++++++++++++++++++++++++++++++++
 meta/classes/utility-tasks.bbclass |  442 ------------------------------------
 meta/conf/distro/poky.conf         |    1 -
 3 files changed, 440 insertions(+), 443 deletions(-)


