Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13B064C811CE
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 16:07:20 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 14:07:19 -0800
Message-Id: <c6d829$pkes23@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,238,1288594800"; d="scan'208";a="860319861"
Received: from unknown (HELO localhost) ([10.255.13.161])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 14:07:09 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Sun, 21 Nov 2010 22:41:22 -0600
To: poky@yoctoproject.org
Subject: [KERNEL PATCH] add blktrace feature
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
X-List-Received-Date: Mon, 22 Nov 2010 22:07:20 -0000

Kernel config needed for blktrace package.

Tom Zanussi (1):
  wrs_meta: add blktrace feature

 .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
 .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
 wrs/cfg/kernel-cache/ktypes/standard/standard.scc  |    3 +++
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
 create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.scc


