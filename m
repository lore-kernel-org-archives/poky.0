Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F5AE4C800A2
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 12:00:21 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Apr 2011 10:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,220,1301900400"; d="scan'208";a="420005173"
Received: from unknown (HELO helios) ([10.255.12.218])
	by azsmga001.ch.intel.com with SMTP; 15 Apr 2011 10:00:19 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 15 Apr 2011 18:00:12 +0100
Message-Id: <cover.1302886579.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 15 Apr 2011 17:56:19 +0100
Date: Fri, 15 Apr 2011 18:00:12 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/3] /etc/network/interfaces updates
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
X-List-Received-Date: Fri, 15 Apr 2011 17:00:21 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Some fixes for /etc/network/interfaces.

Pull URL: git://git.openembedded.org/openembedded-core-contrib
  Branch: paule/netbase-fixes
  Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=paule/netbase-fixes

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (3):
  netbase: automatically bring up eth0
  netbase: automatically bring up usb0 on beagleboard
  netbase: add /etc/network/interfaces file for qemumips & qemuppc

 .../netbase/netbase-4.45/beagleboard/interfaces    |   27 ++++++++++++++++++++
 meta/recipes-core/netbase/netbase-4.45/interfaces  |    1 +
 .../netbase/netbase-4.45/qemumips/interfaces       |    8 ++++++
 .../netbase/netbase-4.45/qemuppc/interfaces        |    8 ++++++
 4 files changed, 44 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
 create mode 100644 meta/recipes-core/netbase/netbase-4.45/qemumips/interfaces
 create mode 100644 meta/recipes-core/netbase/netbase-4.45/qemuppc/interfaces


