Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF9924C806DA
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 11:37:48 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2011 09:37:48 -0700
Message-Id: <0d30dc$lfe3ta@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="720834564"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2011 09:37:35 -0700
Old-Date: Wed, 16 Mar 2011 11:33:10 -0500
Date: Wed, 16 Mar 2011 11:37:31 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] crownbay-noemgd bug 738 fix for laverne
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
X-List-Received-Date: Wed, 16 Mar 2011 16:37:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into meta-intel/laverne.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: tzanussi/crownbay-noemgd-laverne-bugfix-738
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-noemgd-laverne-bugfix-738

Tom Zanussi (1):
  crownbay-noemgd: fix matchbox-panel segfault

 .../recipes-gnome/gtk+/gtk+_2.20.1.bbappend        |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)


