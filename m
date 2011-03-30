Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98C794C806FA
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 14:49:51 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2011 12:49:51 -0700
Message-Id: <b9dded$igdh1t@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,270,1299484800"; d="scan'208";a="621200450"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by orsmga002.jf.intel.com with ESMTP; 30 Mar 2011 12:49:50 -0700
Old-Date: Wed, 30 Mar 2011 14:15:36 -0500
Date: Wed, 30 Mar 2011 14:49:34 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/2][KERNEL] crownbay: update 2.6.37 kernel config, fix bug
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
X-List-Received-Date: Wed, 30 Mar 2011 19:49:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates the crownbay config options to match the 2.6.37 kernel
code.  It also gets rid of the networking bug described in bug #905.

Please pull.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
  Branch: tzanussi/crownbay-2.6.37-meta
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/crownbay-2.6.37-meta

Tom Zanussi (2):
  crownbay: update eg20t config
  crownbay: set cpu type to MATOM

 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    1 +
 meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg    |   21 +++++++++++++--------
 2 files changed, 14 insertions(+), 8 deletions(-)


