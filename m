Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FBFE013CB
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 18:34:55 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 18:34:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124111296"
Received: from yocto-build3.sh.intel.com ([10.239.48.15])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2012 18:34:54 -0700
From: edwin.zhai@intel.com
To: poky@yoctoproject.org
Date: Fri, 23 Mar 2012 09:36:12 +0800
Message-Id: <cover.1332466139.git.edwin.zhai@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1] choose right video driver for n450
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
X-List-Received-Date: Fri, 23 Mar 2012 01:34:55 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Tom,
n450 should use i915 driver rather than i965. With this [YOCTO #1840] got fixed.

Thanks,
Edwin

The following changes since commit 1ada91f40c9c7684ec0963c72de20c639c42ec70:

  fri2: Add 3.2 kernel recipes (2012-03-20 11:19:28 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib gzhai/bsp
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/bsp

Zhai Edwin (1):
  n450: fix wrong video driver

 conf/machine/include/ia32-base.inc       |    4 ++++
 meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
 2 files changed, 5 insertions(+), 1 deletions(-)


