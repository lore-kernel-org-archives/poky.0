Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2FB84C8016A
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 05:52:05 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Apr 2011 03:52:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,245,1301900400"; d="scan'208";a="912171009"
Received: from unknown (HELO helios) ([10.255.13.37])
	by fmsmga001.fm.intel.com with SMTP; 20 Apr 2011 03:52:04 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 20 Apr 2011 11:52:02 +0100
Message-Id: <cover.1303296533.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 20 Apr 2011 11:48:53 +0100
Date: Wed, 20 Apr 2011 11:52:02 +0100
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] Automatically bring up usb0 on BeagleBoard xM
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
X-List-Received-Date: Wed, 20 Apr 2011 10:52:06 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Automatically bring up main ethernet port (usb0) on BeagleBoard xM.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/bbxm-netauto
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/bbxm-netauto

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  netbase: automatically bring up usb0 on BeagleBoard xM

 .../netbase/netbase-4.45/beagleboard/interfaces    |   27 ++++++++++++++++++++
 .../recipes-core/netbase/netbase_4.45.bbappend     |    3 ++
 2 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
 create mode 100644 meta-yocto/recipes-core/netbase/netbase_4.45.bbappend


