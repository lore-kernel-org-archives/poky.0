Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BE2E4C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:24:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Dec 2010 05:24:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="586223060"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.108])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 05:24:24 -0800
Message-Id: <cover.1293023813.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Wed, 22 Dec 2010 21:16:53 +0800
Date: Wed, 22 Dec 2010 21:22:22 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/3]distrodata.bbcalss: To get more precise upstream version for pkg report system
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
X-List-Received-Date: Wed, 22 Dec 2010 13:24:25 -0000

There are some changes to get more recipes upstream version and to generate some necessary data for pkg report system.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/pkg-report-system
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/pkg-report-system

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (3):
  distrodata.bbclass: Change for package report system
  base.bbclass: Add inherit information for checkpkg task
  bitbake.conf: Change the GNU_MIRROR to get more precise result

 meta/classes/base.bbclass       |    4 +-
 meta/classes/distrodata.bbclass |   44 +++++++++++++++++++++++++++++++-------
 meta/conf/bitbake.conf          |    2 +-
 3 files changed, 39 insertions(+), 11 deletions(-)


