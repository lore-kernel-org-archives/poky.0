Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FC49E013A8
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 18:37:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152180202"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.159])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 18:37:50 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 10 Apr 2012 18:37:46 -0700
Message-Id: <cover.1334108211.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [meta-yocto CONSOLIDATED PULL (for RC3) 0/3]
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
X-List-Received-Date: Wed, 11 Apr 2012 01:37:50 -0000

Please pull these updates for RC3

Thanks
	Sau!

The following changes since commit 9067f7bfc295e2f47fda8031d2bcdcce8f63e894:

  Hob:Fixed some incorrect values of Build configuration tab (2012-04-11 00:05:23 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update hardware reference boards to v3.0.24

Nitin A Kamble (1):
  poky-tiny.conf: adjust eglibc options for poky-tiny

Robert Yang (1):
  beagleboard.conf: fix hardcode of virtual/xserver

 meta-yocto/conf/distro/poky-tiny.conf              |    6 ++++++
 meta-yocto/conf/machine/beagleboard.conf           |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 3 files changed, 12 insertions(+), 6 deletions(-)

-- 
1.7.7.6


