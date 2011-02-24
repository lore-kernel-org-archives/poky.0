Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DA0C4C800AC
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 13:58:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2011 11:58:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,220,1297065600"; d="scan'208";a="712901686"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 24 Feb 2011 11:58:07 -0800
Message-Id: <cover.1298577434.git.scott.a.garman@intel.com>
Old-Date: Thu, 24 Feb 2011 11:57:14 -0800
Date: Thu, 24 Feb 2011 11:58:24 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] poky-qemu fix for nfs pathnames, v2
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
X-List-Received-Date: Thu, 24 Feb 2011 19:58:07 -0000

From: Scott Garman <scott.a.garman@intel.com>

[Patch respun for whitespace issues]

This pull request includes a fix for bug #743, which allows nfs
directories to be specified which contain an -image- substring in them.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/poky-qemu-dirname-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/poky-qemu-dirname-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  poky-qemu: handle cases where an nfs directory contains -image-

 scripts/poky-qemu |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

-- 
1.7.4


