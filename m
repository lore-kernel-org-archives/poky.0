Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CE45E004E4
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 08:57:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Sep 2011 08:57:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,468,1312182000"; d="scan'208";a="69088864"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.157])
	by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2011 08:57:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2011 16:57:09 +0100
Message-Id: <cover.1317398102.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1] Fix audio mixer settings on beagleboard
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
X-List-Received-Date: Fri, 30 Sep 2011 15:57:18 -0000

On an rpm rootfs at least (did not test ipk), using RDEPENDS instead of
RDEPENDS_${PN} does not work, so alsa-utils-amixer wasn't installed and
beagleboard-audio was not able to set the default mixer settings.
RDEPENDS_${PN} is the correct usage in any case.

The following changes since commit 72928abdfc00af2a7a5fac27f82e23e5de8efc4b:

  util-linux: Ensure perl scripts reference the correct perl (2011-09-28 21:51:52 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/bb-audio-fix
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/bb-audio-fix

Paul Eggleton (1):
  beagleboard-audio: fix RDEPENDS on alsa-utils-amixer

 .../beagleboard-audio/beagleboard-audio.bb         |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.4.1


