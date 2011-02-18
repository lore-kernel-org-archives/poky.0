Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52C7C4C80093
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 20:28:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2011 18:28:10 -0800
Message-Id: <b9dded$hvvolj@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,184,1297065600"; d="scan'208";a="603972281"
Received: from unknown (HELO localhost) ([10.255.12.33])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2011 18:28:09 -0800
Old-Date: Thu, 17 Feb 2011 20:19:10 -0600
Date: Thu, 17 Feb 2011 20:27:53 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] crownbay: fix for meta-intel/laverne
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
X-List-Received-Date: Fri, 18 Feb 2011 02:28:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes a matchbox-panel segfault for crownbay in laverne.

Please pull into meta-intel/laverne.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/matchbox-segfault-fix-laverne
Branch: tzanussi/matchbox-segfault-fix-laverne
Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/matchbox-segfault-fix-laverne

Tom Zanussi (1):
  crownbay: fix matchbox-panel segfault

 .../recipes-gnome/gtk+/gtk+_2.20.1.bbappend        |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend


