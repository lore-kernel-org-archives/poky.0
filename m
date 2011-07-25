Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 318524C80FC8
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 09:29:00 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2011 07:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,261,1309762800"; d="scan'208";a="32013645"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.240])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2011 07:28:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jul 2011 15:28:41 +0100
Message-Id: <cover.1311603837.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/6] meta-yocto: cleanup of local.conf.sample
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
X-List-Received-Date: Mon, 25 Jul 2011 14:29:00 -0000

A number of changes aimed at cleaning up local.conf.sample so it is easier
to deal with for new users. These are not necessarily final, happy to take
comments/suggestions.

The following changes since commit eea4bd731ef286516ee1fb934fe2222a09c06e70:

  mpc8315e-rdb: Set TARGET_FPU correct (2011-07-22 09:02:58 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/local-conf-cleanup
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/local-conf-cleanup

Paul Eggleton (6):
  meta-yocto/local.conf.sample.extended: update DISTRO_FEATURES
  meta-yocto/local.conf.sample: remove oprofileui-native related
    settings
  meta-yocto/conf/local.conf.sample: move advanced settings to extended
    sample file
  meta-yocto/conf/local.conf.sample: improve comments/layout
  meta-yocto/conf/local.conf.sample: remove emenlow from machine list
  meta-yocto/conf/local.conf.sample: add rm_work example

 meta-yocto/conf/local.conf.sample          |  130 ++++++----------------------
 meta-yocto/conf/local.conf.sample.extended |   92 +++++++++++++++++++-
 2 files changed, 118 insertions(+), 104 deletions(-)

-- 
1.7.4.1


