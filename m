Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4175C4C8109B
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 23:59:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Jan 2011 21:59:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="375493001"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.108])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 21:59:29 -0800
Message-Id: <cover.1295243545.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Mon, 17 Jan 2011 13:52:25 +0800
Date: Mon, 17 Jan 2011 14:00:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1]psplash_svn.bb:replace the poky boot logo with yocto log
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
X-List-Received-Date: Mon, 17 Jan 2011 05:59:30 -0000

Hi Saul:
	Sorry for the previous patch, I didn't find the image colour is not match the background colour.

	
	This patch replace the poky boot logo with yocto logo.

Thanks
Lei

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/changebootlogo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/changebootlogo

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  psplash_svn.bb: Change poky boot logo to yocto logo

 meta/recipes-core/psplash/files/psplash-poky-img.h |  909 ++++++++++++++++++++
 meta/recipes-core/psplash/psplash_svn.bb           |    9 +-
 2 files changed, 916 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/psplash/files/psplash-poky-img.h


