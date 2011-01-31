Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05CA74C810C1
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 15:18:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2011 13:18:36 -0800
Message-Id: <1bdc18$jeo1so@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,405,1291622400"; d="scan'208";a="653002651"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 13:18:36 -0800
Old-Date: Mon, 31 Jan 2011 14:54:07 -0600
Date: Mon, 31 Jan 2011 15:18:34 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/2][KERNEL][2.6.37] Add sugarbay BSP
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
X-List-Received-Date: Mon, 31 Jan 2011 21:18:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The 'Sugar Bay' platform consists of the Intel Sandy Bridge processor,
plus the Cougar Point PCH.

This is just the kernel BSP infrastructure, the poky layer will follow
once I'm back to getting a good build...

Please pull the meta branch as well as tzanussi/yocto/standard/sugarbay.

Thanks,

Tom

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/sugarbay-meta
  Browse:
http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/sugarbay-meta

Tom Zanussi (2):
  sugarbay: create initial BSP infrastructure
  sugarbay: enable i915 graphics

 .../bsp/sugarbay/sugarbay-standard.scc             |    7 ++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |   67 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |   10 +++
 3 files changed, 84 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc


