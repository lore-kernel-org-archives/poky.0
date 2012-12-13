Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B23E00294
	for <poky@yoctoproject.org>; Thu, 13 Dec 2012 13:27:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2012 13:27:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,276,1355126400"; d="scan'208";a="233699889"
Received: from unknown (HELO localhost) ([10.255.12.87])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2012 13:27:40 -0800
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	poky@yoctoproject.org
Date: Thu, 13 Dec 2012 15:27:38 -0600
Message-Id: <cover.1355433708.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] [poky/denzil] yocto-bsp bugfix ported from master
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
X-List-Received-Date: Thu, 13 Dec 2012 21:27:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is a yocto-bsp bugfix [YOCTO #3233] pulled over from poky/master.

Please pull into poky/denzil.

Thanks,

Tom

The following changes since commit d166ea7bb13eaf25b54e14f0bf9c5747ea950617:

  poky.conf: Add Ubuntu 12.04.1 LTS to SANITY_TESTED_DISTROS (2012-11-30 15:46:05 -0800)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/3233-fix-denzil-backport
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/kdf

Tom Zanussi (1):
  yocto-bsp: set branches_base for list_property_values()

 scripts/lib/bsp/engine.py | 4 ++++
 1 file changed, 4 insertions(+)

-- 
1.7.11.4


