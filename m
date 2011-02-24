Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A42034C800B1
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 13:38:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2011 11:38:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,219,1297065600"; d="scan'208";a="606245321"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2011 11:38:05 -0800
Message-Id: <cover.1298576197.git.scott.a.garman@intel.com>
Old-Date: Thu, 24 Feb 2011 11:36:37 -0800
Date: Thu, 24 Feb 2011 11:38:22 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] poky-qemu fix for nfs pathnames
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
X-List-Received-Date: Thu, 24 Feb 2011 19:38:28 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

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


