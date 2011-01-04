Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EDBA4C8109B
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 05:27:58 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Jan 2011 03:27:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,271,1291622400"; d="scan'208";a="589686863"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 04 Jan 2011 03:27:45 -0800
Message-Id: <cover.1294140740.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 4 Jan 2011 19:32:20 +0800
Date: Tue, 04 Jan 2011 19:36:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Fix random kernel unpack failure
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
X-List-Received-Date: Tue, 04 Jan 2011 11:27:58 -0000

autobuilder recently is blocked by random unpack failure of linux-libc-headers-yocto
and linux-yocto. this patch fix this issue. the patch description has the detailed
root cause and fix.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/kernel-unpack-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/kernel-unpack-fix

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  base.bbclass: add lock file for do_unpack task

 meta/classes/base.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


