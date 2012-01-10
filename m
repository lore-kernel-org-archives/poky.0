Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF861E006E9
	for <poky@yoctoproject.org>; Tue, 10 Jan 2012 09:39:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Jan 2012 09:39:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="96630052"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.14.3])
	by orsmga002.jf.intel.com with ESMTP; 10 Jan 2012 09:39:23 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 10 Jan 2012 09:39:21 -0800
Message-Id: <cover.1326216193.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.5
Subject: [PATCH 0/2] Add alsa-state configuration for Beagleboard
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
X-List-Received-Date: Tue, 10 Jan 2012 17:39:24 -0000

CAVEAT: This series requires the alsa-state series recently submitted to the
OE-Core mailing list.

This change set drops the BSP-specific beagleboard-audio recipe in favour of
extending the common alsa-state recipe for alsa configuration.

Note: the beagleboard-audio recipe was not working in any stock image as the
amixer package is not included by default.

The following changes since commit 6ccf3fe442a2f7b2d330c749c66b3227bc47c3d6:

  task-base: add alsa-state to task-base-alsa (2012-01-10 08:34:20 -0800)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib josh/devices
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/devices

Joshua Lock (2):
  alsa-state: add beagleboard specific asound.state
  beagleboard-audio: drop in favour of alsa-state

 meta-yocto/conf/machine/beagleboard.conf           |    3 -
 .../recipes-bsp/alsa-state/alsa-state.bbappend     |    1 +
 .../alsa-state/alsa-state/beagleboard/asound.state |  656 ++++++++++++++++++++
 .../beagleboard-audio/beagleboard-audio.bb         |   33 -
 .../beagleboard-audio/beagleboard-audio            |   44 --
 5 files changed, 657 insertions(+), 80 deletions(-)
 create mode 100644 meta-yocto/recipes-bsp/alsa-state/alsa-state.bbappend
 create mode 100644 meta-yocto/recipes-bsp/alsa-state/alsa-state/beagleboard/asound.state
 delete mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
 delete mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio

-- 
1.7.7.5


