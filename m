Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C9D24C811E4
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 01:54:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2010 23:54:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="867933164"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.15])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 23:54:05 -0800
Message-Id: <cover.1292312335.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 14 Dec 2010 15:38:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] fix gnome-desktop build failure
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
X-List-Received-Date: Tue, 14 Dec 2010 07:54:06 -0000

This is used to fix Bug 587 - gnome-desktop: do_compile failed. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  gnome-desktop: add --disable-desktop-docs

 meta/recipes-gnome/gnome/gnome-desktop.inc |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

-- 
1.7.2


