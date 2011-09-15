Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C514E004D1
	for <poky@yoctoproject.org>; Thu, 15 Sep 2011 02:51:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2011 02:51:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,386,1312182000"; d="scan'208";a="51698874"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.100])
	by fmsmga001.fm.intel.com with ESMTP; 15 Sep 2011 02:51:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org,
	rpurdie@rpsys.net
Date: Thu, 15 Sep 2011 10:51:07 +0100
Message-Id: <cover.1316013940.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/3] Remove remaining emenlow references from meta-yocto
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
X-List-Received-Date: Thu, 15 Sep 2011 09:51:18 -0000

The following changes since commit ce66e2c6bd117d1a40b547b10b376524f9276d16:

  core-image-minimal: Add missing POKY_EXTRA_IMAGE variable (2011-09-14 01:29:30 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/emenlow-tidy
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/emenlow-tidy

Paul Eggleton (3):
  local.conf.sample: remove emenlow from example machines
  qt4-x11-free: remove emenlow reference from meta-yocto bbappend
  linux-yocto: remove emenlow from meta-yocto bbappend (2.6.37 version)

 meta-yocto/conf/local.conf.sample                  |    1 -
 .../linux/linux-yocto_2.6.37.bbappend              |    1 -
 .../recipes-qt/qt4/qt4-x11-free_4.7.3.bbappend     |    1 -
 3 files changed, 0 insertions(+), 3 deletions(-)

-- 
1.7.4.1


