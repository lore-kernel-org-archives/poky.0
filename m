Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 615664C8009A
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 04:44:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Mar 2011 02:44:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,289,1297065600"; d="scan'208";a="895390041"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2011 02:44:09 -0800
Message-Id: <cover.1299667162.git.dexuan.cui@intel.com>
Old-Date: Wed, 9 Mar 2011 18:39:22 +0800
Date: Wed, 09 Mar 2011 18:42:45 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 0/2] PATCH: fix Bug #820
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
X-List-Received-Date: Wed, 09 Mar 2011 10:44:10 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Oprofileui at http://labs.o-hand.com/oprofileui/ is not maintained now, so
we should change SRC_URI to the one maintained by the Yocto project. This
one includes new bugfixes.

BTW, we need to push the patches into both master and bernard.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (2):
  oprofileui: upgrade to the latest version maintained by the Yocto
    project
  distro_tracking_fields.inc: update the info for oprofileui

 .../conf/distro/include/distro_tracking_fields.inc |   11 ++++++-----
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-kernel/oprofile/oprofileui-git.inc    |   10 ++++++++++
 meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    9 ---------
 meta/recipes-kernel/oprofile/oprofileui_git.bb     |    2 ++
 meta/recipes-kernel/oprofile/oprofileui_svn.bb     |    2 --
 6 files changed, 19 insertions(+), 17 deletions(-)
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui-git.inc
 delete mode 100644 meta/recipes-kernel/oprofile/oprofileui-svn.inc
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui_git.bb
 delete mode 100644 meta/recipes-kernel/oprofile/oprofileui_svn.bb

-- 
1.7.2


