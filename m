Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07AA34C80AC3
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 07:58:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Apr 2011 05:58:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="422582397"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by azsmga001.ch.intel.com with ESMTP; 20 Apr 2011 05:58:32 -0700
Message-Id: <cover.1303303969.git.edwin.zhai@intel.com>
Old-Date: Wed, 20 Apr 2011 20:52:49 +0800
Date: Wed, 20 Apr 2011 20:58:24 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/2] [PULL] X apps/UX upgrade, edwin, Apr20, 2011
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
X-List-Received-Date: Wed, 20 Apr 2011 12:58:44 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Saul,
Some simple upgrade. Pls. pull.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/upgrade04
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade04

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (2):
  gtkhtml2: Upgrade to svn r1161 (from r1144)
  puzzles: Upgrade to svn r9151 (from r9084)

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |    2 +-
 .../puzzles/files/oh-puzzles-owl-menu.patch        |    5 +++++
 .../puzzles/{puzzles_r9084.bb => puzzles_r9151.bb} |    2 +-
 4 files changed, 8 insertions(+), 3 deletions(-)
 rename meta/recipes-sato/puzzles/{puzzles_r9084.bb => puzzles_r9151.bb} (94%)


