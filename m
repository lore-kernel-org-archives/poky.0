Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 110054C80872
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 10:48:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2011 08:48:30 -0800
Message-Id: <b9dded$i233fg@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,219,1297065600"; d="scan'208";a="606178802"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2011 08:48:08 -0800
Old-Date: Thu, 24 Feb 2011 10:41:08 -0600
Date: Thu, 24 Feb 2011 10:48:05 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] meta-intel: bugfix for x32 compile errors
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
X-List-Received-Date: Thu, 24 Feb 2011 16:48:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Bugfix for bug #711, please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/bugfix-711
  Branch: tzanussi/bugfix-711
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/bugfix-711

Tom Zanussi (1):
  meta-intel: fix for x86_32 build failures

 .../grub/grub-1.98/gentrigtables-compile-fix.patch |   52 ++++++++++++++++++++
 common/recipes-bsp/grub/grub_1.98.bb               |    5 +-
 2 files changed, 55 insertions(+), 2 deletions(-)
 create mode 100644 common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch


