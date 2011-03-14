Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 355E64C804D4
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 04:05:19 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2011 02:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,314,1297065600"; d="scan'208";a="896974736"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2011 02:05:18 -0700
Message-Id: <cover.1300093238.git.dexuan.cui@intel.com>
Old-Date: Mon, 14 Mar 2011 17:00:38 +0800
Date: Mon, 14 Mar 2011 17:03:48 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 0/1] oprofile: use timer interrupt mode for now
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
X-List-Received-Date: Mon, 14 Mar 2011 09:05:19 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
qemux86 and qemux86-64. We can use timer interrupt mode for now.

With this workaround, oprofile can work in qemux86 and qemux86-64.
I tested in Ubuntu 10.04.

With this workaround, we can lower the priority of bug #828 and I'll continue
to look into it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  poky-qemu-internal: force oprofile into using timer interrupt mode
    for qemux86/qemux86-64 for now

 scripts/poky-qemu-internal |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

-- 
1.7.2


