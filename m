Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24B124C80A89
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 21:27:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 19:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,251,1297065600"; d="scan'208";a="892830805"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2011 19:27:10 -0800
Message-Id: <cover.1299094021.git.liping.ke@intel.com>
Old-Date: Thu, 3 Mar 2011 03:27:01 +0800
Date: Thu, 03 Mar 2011  3:28:51 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] new bugfix for adt installer on SuseLinux
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
X-List-Received-Date: Wed, 02 Mar 2011 03:27:11 -0000

From: Liping Ke <liping.ke@intel.com>

On Suse linux11.2, we found when using sudo, we must add -E opts
to preserver some network proxy environment settings. Otherwise,
opkg-cl can't access files behind firewall. [bug #785]
Also, we need to add absolute path when sourcing files.
Fix for [bug #786]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/adt-newfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-newfix

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  ADT: Bug fix for Suse Linux

 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


