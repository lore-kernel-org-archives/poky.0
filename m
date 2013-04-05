Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97719E0154C
	for <poky@yoctoproject.org>; Fri,  5 Apr 2013 12:00:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2013 11:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,416,1363158000"; d="scan'208";a="313019418"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2013 12:00:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Fri,  5 Apr 2013 12:02:22 -0700
Message-Id: <cover.1365188372.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/2] linux-yocto-tiny 3.8
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
X-List-Received-Date: Fri, 05 Apr 2013 19:00:15 -0000

I have included both the linux-yocto-tiny_3.8 recipe patch and the meta-yocto
poky-tiny distro config to prefer it, just to keep the pull simple. The
linux-yocto-tiny_3.8 recipe was also sent to oe-core for review there.

The following changes since commit 5444db05034e5e693846ccb5543732e790b1d4c7:

  ref-manual: Added preliminary migration raw text. (2013-04-04 14:13:46 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib dvhart/tiny
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/tiny

Darren Hart (2):
  linux-yocto-tiny: Add 3.8.4 recipe
  poky-tiny: Prefer linux-yocto-tiny_3.8

 meta-yocto/conf/distro/poky-tiny.conf             |    2 +-
 meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb |   26 +++++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb

-- 
1.7.5.4


