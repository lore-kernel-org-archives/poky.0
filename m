Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D7734C804D4
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 04:42:00 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2011 02:41:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,314,1297065600"; d="scan'208";a="666974111"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2011 02:41:59 -0700
Message-Id: <cover.1300095446.git.liping.ke@intel.com>
Old-Date: Mon, 14 Mar 2011 17:37:26 +0800
Date: Mon, 14 Mar 2011 17:39:30 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] adt: fix ppc/powerpcc naming bug
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
X-List-Received-Date: Mon, 14 Mar 2011 09:42:00 -0000

From: Liping Ke <liping.ke@intel.com>

for ipk files on ppc, the name should be powerpc. So does the
environment file name. For the tar file name, it should be ppc.
This patch is to correct the arch/machine name pair.
Related Bug#864



Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/fix-name
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/fix-name

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  adt: fix ppc/powerpcc naming bug

 .../adt-installer/scripts/adt_installer_internal   |    6 ++++--
 .../installer/adt-installer/scripts/data_define    |    2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)


