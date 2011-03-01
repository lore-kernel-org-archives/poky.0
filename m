Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 342D24C800A7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:45:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2011 10:45:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="607873769"
Received: from unknown (HELO helios) ([10.255.17.4])
	by orsmga002.jf.intel.com with SMTP; 01 Mar 2011 10:45:16 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 01 Mar 2011 18:45:16 +0000
Message-Id: <cover.1299004921.git.paul.eggleton@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 18:42:01 +0000
Date: Tue, 01 Mar 2011 18:45:16 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/2] make zypper recommend uuidgen
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
X-List-Received-Date: Tue, 01 Mar 2011 18:45:19 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

These patches split out uuidgen to a separate package and then add it to 
zypper's RRECOMMENDS. This addresses bug #749 (I'm making the assumption here 
that zypper really should need uuidgen, haven't looked into this closely).

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/zypper-uuidgen
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/zypper-uuidgen

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (2):
  util-linux: split out uuidgen to a separate package
  zypper: add util-linux-uuidgen to RRECOMMENDS

 meta/recipes-core/util-linux/util-linux.inc       |    3 ++-
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 meta/recipes-extended/zypper/zypper_git.bb        |    4 ++--
 3 files changed, 5 insertions(+), 4 deletions(-)


