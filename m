Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EA91E01642
	for <poky@yoctoproject.org>; Fri,  4 Oct 2013 07:37:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Oct 2013 07:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1033,1371106800"; d="scan'208";a="303193810"
Received: from unknown (HELO localhost) ([10.255.15.215])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Oct 2013 07:37:36 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Oct 2013 09:37:35 -0500
Message-Id: <cover.1380897132.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp: fix for [YOCTO #5106]
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
X-List-Received-Date: Fri, 04 Oct 2013 14:37:38 -0000

The following changes since commit a02280f99f05b1c21de2a78de9222a2f62a0dabc:

  README.hardware: update genericx86 hardware support (2013-10-01 23:08:21 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-kernel-topdir-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-kernel-topdir-fix

Tom Zanussi (1):
  yocto-kernel: Use variable-substituted BBLAYERS

 scripts/lib/bsp/kernel.py | 93 +++++++++++++++++++----------------------------
 1 file changed, 38 insertions(+), 55 deletions(-)

-- 
1.7.11.4


