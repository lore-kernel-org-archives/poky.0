Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD988E00A13
	for <poky@yoctoproject.org>; Fri,  4 Apr 2014 07:26:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2014 07:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,795,1389772800"; d="scan'208";a="514498767"
Received: from davidllo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2014 07:26:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Apr 2014 15:26:22 +0100
Message-Id: <cover.1396621532.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
Subject: [PATCH 0/4] Remove references to routerstationpro
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Apr 2014 14:26:45 -0000

The routerstationpro reference BSP has been replaced with the EdgeRouter
Lite (edgerouter) for 1.6; the routerstationpro BSP is now preserved in
a new meta-yocto-bsp-old layer on git.yoctoproject.org. This series
removes / replaces references to the old BSP in poky / meta-yocto.


The following changes since commit 828b6754c205fe6e5cd5f44d1ff50da304b3273d:

  util-linux: fix parallel build issue (2014-04-04 14:18:44 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/rspro-remove
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/rspro-remove

Paul Eggleton (4):
  routerstationpro: drop
  local.conf.sample: drop routerstationpro in favour of edgerouter
  README.hardware: drop routerstationpro in favour of edgerouter
  README.hardware: tweak edgerouter instructions

 README.hardware                                    | 195 ++-------------------
 meta-yocto-bsp/conf/machine/routerstationpro.conf  |  27 ---
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   6 -
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   5 -
 meta-yocto/conf/local.conf.sample                  |   2 +-
 5 files changed, 20 insertions(+), 215 deletions(-)
 delete mode 100644 meta-yocto-bsp/conf/machine/routerstationpro.conf

-- 
1.9.0


