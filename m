Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5945B4C80B71
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 20:25:12 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Dec 2010 18:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,345,1288594800"; d="scan'208";a="687221003"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.39])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2010 18:25:11 -0800
Message-Id: <cover.1292436546.git.liping.ke@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 16 Dec 2010 02:09:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Add extra parameter options for poky-qemu scripts
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
X-List-Received-Date: Wed, 15 Dec 2010 02:25:12 -0000


In order to support user's extra requirement for adding extra options for qemu,
we add extra parameter options, user can add extra parameters such as
"<-m 256>" in poky-qemu script command.



Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/qemu_extra_option
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/qemu_extra_option

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  Add extra parameters options for poky-qemu scripts

 scripts/poky-qemu          |   14 ++++++++++++++
 scripts/poky-qemu-internal |   22 ++++++++++++++++++++--
 2 files changed, 34 insertions(+), 2 deletions(-)


