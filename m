Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD1C9E00723
	for <poky@yoctoproject.org>; Wed,  2 May 2012 00:40:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 May 2012 00:40:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160816276"
Received: from yocto-build3.sh.intel.com ([10.239.48.15])
	by fmsmga002.fm.intel.com with ESMTP; 02 May 2012 00:40:10 -0700
From: edwin.zhai@intel.com
To: poky@yoctoproject.org
Date: Wed,  2 May 2012 15:43:58 +0800
Message-Id: <cover.1335944480.git.edwin.zhai@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1] Fix pango modules load failure in multilib environment, Edwin, May2, 2012
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
X-List-Received-Date: Wed, 02 May 2012 07:40:11 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

This patch fix the modules load failure when multi-libs of pango co-exist in system.

[YOCTO #2356] got fixed.

Thanks,
Edwin


The following changes since commit 2c3d4f5beee8f57a74244495511b9294df1085ea:

  documentation/bsp-guide/bsp.xml: spelling corrected. (2012-04-18 16:42:15 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib gzhai/fix2
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Zhai Edwin (1):
  pango: Fix modules load failure in multilib environment

 .../pango/pango-1.28.4/multilib-fix.patch          |   90 ++++++++++++++++++++
 meta/recipes-graphics/pango/pango.inc              |   12 ++-
 meta/recipes-graphics/pango/pango_1.28.4.bb        |    7 +-
 3 files changed, 101 insertions(+), 8 deletions(-)
 create mode 100644 meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch


