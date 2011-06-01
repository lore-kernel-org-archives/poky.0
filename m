Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 543A54C804C2
	for <poky@yoctoproject.org>; Wed,  1 Jun 2011 11:38:41 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Jun 2011 09:38:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,304,1304319600"; 
   d="scan'208";a="5320229"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.13.41])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2011 09:38:40 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  1 Jun 2011 09:38:37 -0700
Message-Id: <cover.1306946141.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] Check for non-gplv3 build before including qemu-config
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
X-List-Received-Date: Wed, 01 Jun 2011 16:38:41 -0000

This patch will check INCOMPATIBLE_LICENSE for GPLv3 before including
qemu-config to the DISTRO_EXTRA_RDEPENDS list.

Sau!

The following changes since commit 802080eb6dd4c872ef16797f06d1aee43624a64c:

  allarch.bbclass: A "all" TARGET_ARCH is dangerous as an OVERRIDE (2011-06-01 14:13:23 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/patch
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/patch

Saul Wold (1):
  poky.conf: Make qemu-config optional for non-GPLv3

 meta-yocto/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.3.4


