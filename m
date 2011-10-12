Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7041AE005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:09:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Oct 2011 00:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,333,1315206000"; d="scan'208";a="72642213"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.36.112])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 00:09:01 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 12 Oct 2011 15:09:04 +0800
Message-Id: <cover.1318402903.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] fix to bug 1670
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
X-List-Received-Date: Wed, 12 Oct 2011 07:09:02 -0000

The following changes since commit 7dfb9ce398a4ca62d2d53be9ddc7128e665d5126:

  shared-mime-info: Fix a parallel make race (2011-10-11 18:08:38 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dcui/fix_1670
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/fix_1670

Dexuan Cui (1):
  atom-pc.conf, beagleboard.conf: rename xserver-xf86-dri-lite to
    xserver-xorg

 meta-yocto/conf/machine/atom-pc.conf     |    6 +++---
 meta-yocto/conf/machine/beagleboard.conf |    4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
1.7.6


