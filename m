Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EFF64C80AA2
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 18:36:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Feb 2011 16:36:31 -0800
Message-Id: <b9dded$i2iob1@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,229,1297065600"; d="scan'208";a="606691683"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga002.jf.intel.com with ESMTP; 25 Feb 2011 16:36:30 -0800
Old-Date: Fri, 25 Feb 2011 18:27:33 -0600
Date: Fri, 25 Feb 2011 18:36:26 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] crownbay changes for 2.6.37
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
X-List-Received-Date: Sat, 26 Feb 2011 00:36:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds the code necessary to move meta-crownbay over to
linux-yocto.  A follow-on patch will actually do the switchover once
the kernel srcrevs are known.

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/crownbay-2.6.37
  Branch: tzanussi/crownbay-2.6.37
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-2.6.37

Tom Zanussi (1):
  meta-crownbay: 2.6.37 changes

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    5 +++++
 meta-crownbay/conf/machine/crownbay.conf           |    7 ++++++-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +++
 3 files changed, 14 insertions(+), 1 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend


