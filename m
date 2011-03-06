Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 928D24C800A3
	for <poky@yoctoproject.org>; Sun,  6 Mar 2011 11:19:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Mar 2011 09:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,272,1297065600"; d="scan'208";a="894350908"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by fmsmga001.fm.intel.com with ESMTP; 06 Mar 2011 09:19:39 -0800
Message-Id: <cover.1299431945.git.sgw@linux.intel.com>
Old-Date: Sun, 6 Mar 2011 09:19:05 -0800
Date: Sun, 06 Mar 2011  9:19:38 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/2] 2 More Dependency Fixes for RC2
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
X-List-Received-Date: Sun, 06 Mar 2011 17:19:39 -0000

From: Saul Wold <sgw@linux.intel.com>

Fix more dependency issues

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/oe-core
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (2):
  gst-plugins: Added hal to DEPENDS
  attr: Added ncurses to depends

 meta/recipes-multimedia/gstreamer/gst-plugins.inc |    2 +-
 meta/recipes-support/attr/attr.inc                |    2 ++
 2 files changed, 3 insertions(+), 1 deletions(-)


