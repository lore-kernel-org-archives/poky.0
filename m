Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B673F4C800A0
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 13:21:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Mar 2011 11:21:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,304,1297065600"; d="scan'208";a="719217049"
Received: from unknown (HELO localhost) ([10.255.12.198])
	by orsmga001.jf.intel.com with ESMTP; 11 Mar 2011 11:21:58 -0800
Message-Id: <cover.1299871227.git.dvhart@linux.intel.com>
Old-Date: Fri, 11 Mar 2011 11:20:27 -0800
Date: Fri, 11 Mar 2011 11:21:54 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2][meta-intel] n450 KMACHINE and SRCREV fixes [YOCTO #837]
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
X-List-Received-Date: Fri, 11 Mar 2011 19:21:59 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patches address bug #837, a boot failure on the n450.

Darren Hart (2):
  n450: use KMACHINE instead of WRMACHINE (fix boot failure)
  n450: Default to atom-pc SRCREVs for linux-yocto-stable

 .../linux/linux-yocto-stable_git.bbappend          |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)


