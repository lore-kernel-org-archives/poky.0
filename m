Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 542164C81065
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 03:48:25 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 01:48:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,235,1288594800"; d="scan'208";a="629068732"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 01:48:24 -0800
Message-Id: <cover.1290418904.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 22 Nov 2010 17:41:44 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] update galago-daemon gccmakedep gnome-doc-utils libart-lgpl liberation-fonts
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
X-List-Received-Date: Mon, 22 Nov 2010 09:48:25 -0000


Add five recipes license checksum information.
    galago-daemon: COPYING file checksum
    gccmakedep: COPYING file checksum
    gnome-doc-utils: LGPL file and GPL file checksum
    libart-lgpl: COPYING file checksum
    liberation-fonts:COPYING file checksum

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/chksum
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  This patch contains five recipes license checksum information.

 .../galago/galago-daemon_0.5.1.bb                  |    1 +
 meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb |    3 ++-
 meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb     |    1 +
 .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    2 +-
 5 files changed, 6 insertions(+), 2 deletions(-)


