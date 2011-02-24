Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E6FA4C800BD
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 23:42:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Feb 2011 21:42:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,215,1297065600"; d="scan'208";a="605993929"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 23 Feb 2011 21:42:44 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 24 Feb 2011 13:47:45 +0800
Message-Id: <cover.1298526181.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] meta-sugarbay: add mesa lib in BSP to fix BUG 727
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
X-List-Received-Date: Thu, 24 Feb 2011 05:42:46 -0000

mesa lib is required for sugarbuy 3D application, so add it in the BSP config.
this fix [BUGID #727]

this patch is targeted for BSP git tree: "git://git.pokylinux.org/meta-intel"

CC: Tom Zanussi <tom.zanussi@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/bug727
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug727

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  sugarbay.conf: add mesa library to fix BUG 727

 meta-sugarbay/conf/machine/sugarbay.conf |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)


