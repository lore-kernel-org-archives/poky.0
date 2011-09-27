Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BA1CE004E9
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:25:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Sep 2011 06:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,449,1312182000"; d="scan'208";a="71180172"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.163])
	by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2011 06:24:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 27 Sep 2011 14:24:50 +0100
Message-Id: <cover.1317129817.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1] Set tested distros list
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
X-List-Received-Date: Tue, 27 Sep 2011 13:25:00 -0000

I had hoped to be able to have a patch setting this list much earlier,
but for several reasons this did not happen. The list is quite short, but
it's currently all we have on record.

(Note, I excluded Fedora 16 as that isn't even at final RC stage yet.)

The following changes since commit e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4:

  libtool: Fix an issue where unnecessary rpaths were being injected (2011-09-26 17:56:44 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/sanity-distros
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sanity-distros

Paul Eggleton (1):
  conf/distro/poky.conf: set SANITY_TESTED_DISTROS

 meta-yocto/conf/distro/poky.conf |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

-- 
1.7.4.1


