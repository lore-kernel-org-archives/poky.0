Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EB8C4C805BB
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 00:24:21 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Mar 2011 22:24:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="721055911"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 22:24:20 -0700
Message-Id: <cover.1300338196.git.liping.ke@intel.com>
Old-Date: Thu, 17 Mar 2011 13:03:16 +0800
Date: Thu, 17 Mar 2011 13:21:25 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] ADT: bug fix for nameing and do_patch sequence
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
X-List-Received-Date: Thu, 17 Mar 2011 05:24:21 -0000

From: Liping Ke <liping.ke@intel.com>

This patch is for fixing the x86-64 image name bug and also,
do_patch must be down before do_deploy.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/seq_fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/seq_fix

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  ADT: bug fix for nameing and do_patch sequence

 .../installer/adt-installer/adt_installer          |   13 ++++++++-----
 .../adt-installer/scripts/adt_installer_internal   |    6 +++---
 .../installer/adt-installer_1.0.bb                 |    2 +-
 3 files changed, 12 insertions(+), 9 deletions(-)


