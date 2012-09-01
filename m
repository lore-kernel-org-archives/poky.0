Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B7D9E004A1
	for <poky@yoctoproject.org>; Sat,  1 Sep 2012 09:56:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Sep 2012 09:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,353,1344236400"; d="scan'208";a="217094047"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.251])
	by fmsmga001.fm.intel.com with ESMTP; 01 Sep 2012 09:55:51 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Sat,  1 Sep 2012 09:55:51 -0700
Message-Id: <cover.1346518417.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [CONSOLIDATED REQUEST - meta-yocto 0/8] yocto-bsp & X changes (cover letter only)
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
X-List-Received-Date: Sat, 01 Sep 2012 16:56:06 -0000

Richard:

These pending changes are needed if you pull the kdrive
changes into OE-Core

Thanks
	Sau!

The following changes since commit 9ba1e33e2d14362971d6441ee6142bcb0857df1a:

  sstate: Ensure master.list exists if it doesn't already (2012-08-30 22:45:56 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib stage/meta-yocto
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stage/meta-yocto

Robert Yang (1):
  local.conf.sample.extended: update the sample for archiver.bbclass

Ross Burton (3):
  bsp: set default XSERVER for PowerPC and MIPS machines to Xorg
  routerstationpro: switch to Xorg instead of kdrive
  mpc8315e: switch to Xorg instead of kdrive

Tom Zanussi (4):
  yocto-bsp: include meta-intel.inc if emgd selected
  yocto-bsp: update the help regarding the meta-intel layer
  yocto-bsp: add a LICENSE_FLAGS_WHITELIST blurb for emgd to README
  yocto-bsp: add new strip_base() function

 meta-yocto/conf/local.conf.sample.extended         |   50 +++++++++++---------
 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    7 ++-
 meta-yocto/conf/machine/routerstationpro.conf      |    7 ++-
 scripts/lib/bsp/engine.py                          |   10 ++++
 scripts/lib/bsp/help.py                            |   12 ++--
 .../lib/bsp/substrate/target/arch/common/README    |    8 +++
 .../arch/i386/conf/machine/{{=machine}}.conf       |    2 +
 .../arch/mips/conf/machine/{{=machine}}.conf       |    7 ++-
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |    7 ++-
 9 files changed, 73 insertions(+), 37 deletions(-)

-- 
1.7.7.6


