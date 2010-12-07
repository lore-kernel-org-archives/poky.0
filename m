Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E6BF4C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 19:42:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 17:42:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="581190990"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 17:42:42 -0800
Message-Id: <cover.1291683028.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 08:50:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3][RFC] Poky disk space size optimization
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
X-List-Received-Date: Tue, 07 Dec 2010 01:42:43 -0000

This RFC aims to reduce the poky disk space size.

The optimization point is the duplicated file copies in WORKDIR and
sysroot directories. When installing, files will be copied from source
code package into the image folder; Then some files will be copied
from image folder to sysroot-destdir, and some other files will be
copied from image folder to package folder. While doing package split,
some files will be copied from package folder to packages-split folder,
etc.

The thought is to use hard link to replace the direct copy.
The three commits do the work of:

a) package.bbclass: hard link "image-->sysroot-destdir"
b) sstate.bbclass:  hard link "package-->packages-split"
c) staging.bbclass: hard link "sysroot-destdir-->sysroots".

After testing with minimal/sato/sdk build, this approach could save
about 20% disk space.
(minimal: 23G -> 19G, sato: 44G -> 35G, sdk: 54G -> 44G).

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/perf
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/perf

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (3):
  package.bbclass: Use hard link for package split instead of copy
  sstate.bbclass: Use hard link when staging files into sysroots
  staging.bbclass: use hardlink when staging files to sysroot-destdir

 meta/classes/package.bbclass |    8 +++++---
 meta/classes/sstate.bbclass  |    2 +-
 meta/classes/staging.bbclass |   27 ++++++++++++++++++++++++++-
 meta/lib/oe/path.py          |   28 ++++++++++++++++++++++++++++
 4 files changed, 60 insertions(+), 5 deletions(-)


