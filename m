Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A4784C80889
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 00:53:34 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Mar 2011 22:53:29 -0700
Message-Id: <849307$c0jmam@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="403298650"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 22:53:28 -0700
Old-Date: Wed, 16 Mar 2011 00:44:27 -0500
Date: Wed, 16 Mar 2011  0:53:25 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] crownbay-noemgd bug 738 fix for master
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
X-List-Received-Date: Wed, 16 Mar 2011 05:53:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: tzanussi/crownbay-noemgd-master-bugfix-738
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/crownbay-noemgd-master-bugfix-738

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>

Tom Zanussi (1):
  crownbay-noemgd: fix matchbox-panel segfault

 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


