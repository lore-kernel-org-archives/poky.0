Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56B854C80335
	for <poky@yoctoproject.org>; Tue, 17 May 2011 13:07:55 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2011 11:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,226,1304319600"; 
   d="scan'208";a="2908710"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 11:07:54 -0700
Message-Id: <cover.1305655392.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 17 May 2011 11:03:12 -0700
Date: Tue, 17 May 2011 11:07:54 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] switch to gcc 4.6.0 for x86 x86-64 & arm
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
X-List-Received-Date: Tue, 17 May 2011 18:07:55 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

gcc 4.6.0 is good enough to switch for x86, x86-64 & arm now.

I could build core-sdk images and run them through the qemu machines 
when compiled with gcc 4.6.0.

mips & ppc are still not ready, mainly the kernel compilation issues
with gcc 4.6.0. These kernel issues are being worked on by Bruce.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  tcmode-default: switch to gcc 4.6.0 for x86, x86-64 & arm

 meta/conf/distro/include/tcmode-default.inc |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

-- 
1.7.3.4


