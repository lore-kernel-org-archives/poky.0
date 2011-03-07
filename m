Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D38A54C8009A
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 00:23:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Mar 2011 22:22:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,275,1297065600"; d="scan'208";a="398568777"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 06 Mar 2011 22:22:57 -0800
Message-Id: <cover.1299478629.git.liping.ke@intel.com>
Old-Date: Mon, 7 Mar 2011 14:17:09 +0800
Date: Mon, 07 Mar 2011 14:21:33 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/1] adt: Update to svn r596 to fix symbolic link issues
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
X-List-Received-Date: Mon, 07 Mar 2011 06:23:01 -0000

From: Liping Ke <liping.ke@intel.com>

See the longlinksfix patch for details but symlinks over 100 chars long
were broken in sdk tarballs and its due to problems in the inbuilt tar in
libbb in opkg. svn r596 has already fixed the problem.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/opkg-upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/opkg-upgrade

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  adt: Update to svn r596 to fix symbolic link issues

 .../conf/distro/include/poky-default-revisions.inc |    1 +
 .../installer/adt-installer/adt_installer          |    2 +-
 .../installer/adt-installer_1.0.bb                 |    8 ++++----
 3 files changed, 6 insertions(+), 5 deletions(-)


