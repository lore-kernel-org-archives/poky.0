Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C7DE01472
	for <poky@yoctoproject.org>; Fri, 31 May 2013 08:16:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 31 May 2013 08:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,779,1363158000"; d="scan'208";a="249132893"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.185])
	by AZSMGA002.ch.intel.com with ESMTP; 31 May 2013 08:16:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 31 May 2013 16:16:50 +0100
Message-Id: <cover.1370013232.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [dylan][PATCH 0/2] Stable branch cherry-picks (cover letter only)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 May 2013 15:16:56 -0000

The following changes since commit d78df944e71950d65319fe1fe9f17b0510bb7be0:

  dev-manual, ref-manual, poky.ent: Fixed broken Release Note scheme (2013-05-31 08:19:26 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/dylan-next-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/dylan-next-poky

Bruce Ashfield (1):
  poky-lsb: make NFS kernel server support specific to linux-yocto

Paul Eggleton (1):
  xserver-xf86-config: re-enable AutoAddDevices for beagleboard

 .../xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf              | 1 -
 meta-yocto/conf/distro/poky-lsb.conf                                    | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

-- 
1.8.1.2


