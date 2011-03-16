Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E5AF4C80A4F
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 00:53:43 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2011 22:53:42 -0700
Message-Id: <1bdc18$jsq72s@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="667753567"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2011 22:53:42 -0700
Old-Date: Wed, 16 Mar 2011 00:45:18 -0500
Date: Wed, 16 Mar 2011  0:53:34 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] crownbay-noemgd bug 738 fix for bernard
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
X-List-Received-Date: Wed, 16 Mar 2011 05:53:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into meta-intel/bernard.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: tzanussi/crownbay-noemgd-bernard-bugfix-738
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-noemgd-bernard-bugfix-738

Tom Zanussi (1):
  crownbay-noemgd: fix matchbox-panel segfault

 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


