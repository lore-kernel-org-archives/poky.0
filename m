Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F3A34C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 14:06:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 12:06:33 -0800
Message-Id: <b9dded$i092vq@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="604277759"
Received: from unknown (HELO localhost) ([10.255.12.33])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2011 12:06:33 -0800
Old-Date: Fri, 18 Feb 2011 13:58:57 -0600
Date: Fri, 18 Feb 2011 14:06:16 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] crownbay: fix for matchbox-panel segfault
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
X-List-Received-Date: Fri, 18 Feb 2011 20:06:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes a matchbox-panel segfault for crownbay.

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/matchbox-segfault-fix
Branch: tzanussi/matchbox-segfault-fix
Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/matchbox-segfault-fix

Tom Zanussi (1):
  crownbay: fix matchbox-panel segfault

 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend


