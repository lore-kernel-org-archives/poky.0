Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F403D4C80093
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:46:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 07:46:55 -0800
Message-Id: <0d30dc$l2qd90@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="707605794"
Received: from unknown (HELO localhost) ([10.255.14.181])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2011 07:46:54 -0800
Old-Date: Sun, 13 Feb 2011 22:37:43 -0600
Date: Mon, 14 Feb 2011  9:46:42 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1][KERNEL][2.6.37] Add jasperforest BSP meta branch
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
X-List-Received-Date: Mon, 14 Feb 2011 15:46:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

'Jasper Forest' refers to the Intel Xeon C5500/C3500 processors, which
combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
'Picket Post' CRB this BSP was developed on.

This is just the kernel BSP infrastructure, the poky layer will
follow...

Please pull.

Thanks,

Tom

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
  Branch: tzanussi/jasperforest-meta
  Browse:
http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/jasperforest-meta

Tom Zanussi (1):
  jasperforest: create initial BSP infrastructure

 .../bsp/jasperforest/jasperforest-standard.scc     |    7 ++
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |   60 ++++++++++++++++++++
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ++
 3 files changed, 73 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc


