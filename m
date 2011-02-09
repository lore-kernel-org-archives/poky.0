Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C99494C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 07:58:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Feb 2011 05:58:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="386319166"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 09 Feb 2011 05:58:40 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 22:00:49 +0800
Message-Id: <cover.1297258935.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4] mesa: replace talloc with MIT-x licensed ralloc
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
X-List-Received-Date: Wed, 09 Feb 2011 13:58:42 -0000

Mesa upstream has finished the porting of MIT-x licensed ralloc and
has replaced the talloc with ralloc. so this patch series sync up mesa
with upstream to resolve the GPLv3 talloc issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/mesa
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/mesa

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (4):
  mesa-dri-7.10: replace GPLv3 talloc with MIT-x licensed ralloc
  mesa-7.10: set mesa 7.10 as default instead of 7.8.2
  mesa-xlib: upgrade to 7.10
  talloc: remove talloc recipe

 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../mesa/files/talloc-removal.patch                |15571 ++++++++++++++++++++
 meta/recipes-graphics/mesa/mesa-dri_7.10.bb        |    8 +-
 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |    5 +-
 .../mesa/{mesa-xlib_7.9.bb => mesa-xlib_7.10.bb}   |   11 +-
 meta/recipes-support/talloc/talloc_2.0.1.bb        |   24 -
 6 files changed, 15587 insertions(+), 34 deletions(-)
 create mode 100644 meta/recipes-graphics/mesa/files/talloc-removal.patch
 rename meta/recipes-graphics/mesa/{mesa-xlib_7.9.bb => mesa-xlib_7.10.bb} (60%)
 delete mode 100644 meta/recipes-support/talloc/talloc_2.0.1.bb


