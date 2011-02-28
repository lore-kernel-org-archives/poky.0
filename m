Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C50C44C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 02:30:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 00:29:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,238,1297065600"; d="scan'208";a="662055377"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 00:29:58 -0800
Message-Id: <cover.1298882840.git.dongxiao.xu@intel.com>
Old-Date: Mon, 28 Feb 2011 16:47:20 +0800
Date: Mon, 28 Feb 2011 16:50:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/2][PULL] Bug fix for 709 and 710
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
X-List-Received-Date: Mon, 28 Feb 2011 08:30:01 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Richard and Saul,

This pull request fixes [BUGID #709] and [BUGID #710], which are SRC_URI
changes. Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (2):
  attr: Change SRC_URI to a correct location
  ncurses: Change ncurses patch SRC_URI location

 meta/recipes-core/ncurses/ncurses_5.7.bb |    5 +++--
 meta/recipes-support/attr/attr.inc       |    2 +-
 meta/recipes-support/attr/attr_2.4.44.bb |    2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)


