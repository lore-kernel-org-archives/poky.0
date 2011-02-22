Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 220964C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:13:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 07:13:09 -0800
Message-Id: <0d30dc$l6p4vt@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="711758853"
Received: from unknown (HELO localhost) ([10.255.12.44])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 07:13:08 -0800
Old-Date: Tue, 22 Feb 2011 09:04:04 -0600
Date: Tue, 22 Feb 2011  9:13:05 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/3] switch emenlow kernel to 2.6.37
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
X-List-Received-Date: Tue, 22 Feb 2011 15:13:10 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset switches emenlow to the 2.6.37 kernel and updates some
SRCREVs. Please Pull.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/emenlow-switch-to-2.6.37
  Branch: tzanussi/emenlow-switch-to-2.6.37
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/emenlow-switch-to-2.6.37

Tom Zanussi (3):
  emenlow: switch kernel to linux-yocto
  emenlow: update linux-yocto-stable SRCREVs
  emenlow: update linux-yocto SRCREVs

 meta-emenlow/conf/machine/emenlow.conf             |   11 +++++++----
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +++
 2 files changed, 10 insertions(+), 4 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend


