Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC055E00D4D; Thu,  9 Nov 2017 06:59:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11A3FE00C59
	for <poky@yoctoproject.org>; Thu,  9 Nov 2017 06:59:17 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 09 Nov 2017 06:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,370,1505804400"; 
   d="scan'208";a="3019512"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.19.59])
	by orsmga001.jf.intel.com with ESMTP; 09 Nov 2017 06:59:16 -0800
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Thu,  9 Nov 2017 14:59:05 +0000
Message-Id: <cover.1510239170.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [PATCH 0/1] beaglebone-yocto: rename beaglebone machine to beaglebone-yocto
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
X-List-Received-Date: Thu, 09 Nov 2017 14:59:20 -0000

The attached patch renames the beaglebone machine in meta-yocto-bsp to
beaglebone-yocto in order to make it easier to distinguish between the
beaglebone machine support in meta-yocto-bsp and meta-ti.

The following changes since commit 0d44e59bfaa95162cf2133df1d08f6419314bb8e:

  scripts/lib/bsp: delete, all users have been removed (2017-11-05 13:43:00 +0000)

are available in the git repository at:

  git://github.com/incandescant/meta-yocto joshuagl/beaglebone-yocto

for you to fetch changes up to f3a4373f9f6b9b5b21be23671210e405f4b229fa:

  beaglebone-yocto: rename beaglebone machine to beaglebone-yocto (2017-11-09 14:41:41 +0000)

----------------------------------------------------------------
Joshua Lock (1):
      beaglebone-yocto: rename beaglebone machine to beaglebone-yocto

 meta-poky/conf/local.conf.sample                                 | 2 +-
 meta-yocto-bsp/README.hardware                                   | 6 +++---
 meta-yocto-bsp/conf/layer.conf                                   | 2 +-
 .../conf/machine/{beaglebone.conf => beaglebone-yocto.conf}      | 6 +++---
 .../formfactor/{beaglebone => beaglebone-yocto}/machconfig       | 0
 .../{beaglebone => beaglebone-yocto}/xorg.conf                   | 0
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend    | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend    | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend     | 9 +++++----
 meta-yocto-bsp/wic/{beaglebone.wks => beaglebone-yocto.wks}      | 0
 11 files changed, 28 insertions(+), 24 deletions(-)
 rename meta-yocto-bsp/conf/machine/{beaglebone.conf => beaglebone-yocto.conf} (85%)
 rename meta-yocto-bsp/recipes-bsp/formfactor/formfactor/{beaglebone => beaglebone-yocto}/machconfig (100%)
 rename meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/{beaglebone => beaglebone-yocto}/xorg.conf (100%)
 rename meta-yocto-bsp/wic/{beaglebone.wks => beaglebone-yocto.wks} (100%)

Joshua Lock (1):
  beaglebone-yocto: rename beaglebone machine to beaglebone-yocto

 meta-poky/conf/local.conf.sample                                 | 2 +-
 meta-yocto-bsp/README.hardware                                   | 6 +++---
 meta-yocto-bsp/conf/layer.conf                                   | 2 +-
 .../conf/machine/{beaglebone.conf => beaglebone-yocto.conf}      | 6 +++---
 .../formfactor/{beaglebone => beaglebone-yocto}/machconfig       | 0
 .../{beaglebone => beaglebone-yocto}/xorg.conf                   | 0
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend    | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend    | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend     | 9 +++++----
 meta-yocto-bsp/wic/{beaglebone.wks => beaglebone-yocto.wks}      | 0
 11 files changed, 28 insertions(+), 24 deletions(-)
 rename meta-yocto-bsp/conf/machine/{beaglebone.conf => beaglebone-yocto.conf} (85%)
 rename meta-yocto-bsp/recipes-bsp/formfactor/formfactor/{beaglebone => beaglebone-yocto}/machconfig (100%)
 rename meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/{beaglebone => beaglebone-yocto}/xorg.conf (100%)
 rename meta-yocto-bsp/wic/{beaglebone.wks => beaglebone-yocto.wks} (100%)

-- 
2.13.6

