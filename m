Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 871334C80050
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 02:46:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2011 00:46:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,307,1297065600"; d="scan'208";a="896518238"
Received: from unknown (HELO localhost) ([10.255.12.198])
	by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2011 00:46:21 -0800
Message-Id: <cover.1299919238.git.dvhart@linux.intel.com>
Old-Date: Sat, 12 Mar 2011 00:40:38 -0800
Date: Sat, 12 Mar 2011  0:46:15 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2][meta-intel] n450: set default mixer settings on boot [YOCTO #798]
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
X-List-Received-Date: Sat, 12 Mar 2011 08:46:21 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patches address Bug 798. The existing n450-audiofix wasn't
getting installed, and it wasn't adjusting the mixer. These patches repair
the recipe and update it to resemble a proper init script.

This is a stop-gap solution as a more general solution, such as alsa-state,
would be preferred long term.

Darren Hart (2):
  n450: revamp audio mixer init script
  n450: replace n450-audio with a proper init script

 meta-n450/conf/machine/n450.conf                   |    2 +
 meta-n450/recipes-bsp/audiofix/audiofix.bb         |   17 --------
 meta-n450/recipes-bsp/audiofix/files/n450_audiofix |   13 ------
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb     |   30 ++++++++++++++
 .../recipes-bsp/n450-audio/n450-audio/n450-audio   |   42 ++++++++++++++++++++
 5 files changed, 74 insertions(+), 30 deletions(-)
 delete mode 100644 meta-n450/recipes-bsp/audiofix/audiofix.bb
 delete mode 100644 meta-n450/recipes-bsp/audiofix/files/n450_audiofix
 create mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio.bb
 create mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio


