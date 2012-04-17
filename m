Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDFEBE013A6
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 16:46:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2012 16:46:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90246927"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.85])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Apr 2012 16:46:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 18 Apr 2012 00:46:16 +0100
Message-Id: <cover.1334706261.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [1.2] Enable untested distribution warning
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
X-List-Received-Date: Tue, 17 Apr 2012 23:46:21 -0000

The following changes since commit 20ff9db92165e6d16897671d2b1d370661962712:

  lib/bb/ui/crumbs/recipeselectionpage: fix type availabel->available (2012-04-17 16:41:48 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/sanity-distros
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/sanity-distros

Paul Eggleton (1):
  conf/distro/poky.conf: set SANITY_TESTED_DISTROS

 meta-yocto/conf/distro/poky.conf |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

-- 
1.7.5.4


