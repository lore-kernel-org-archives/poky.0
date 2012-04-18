Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 844A2E013BA
	for <poky@yoctoproject.org>; Wed, 18 Apr 2012 03:03:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2012 03:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="133857869"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.88])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2012 03:03:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 18 Apr 2012 11:03:32 +0100
Message-Id: <cover.1334743086.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] Enable untested distribution warning v2
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
X-List-Received-Date: Wed, 18 Apr 2012 10:03:36 -0000

Since v1, update Debian version as this was updated (as part of normal
"apt-get update") since this string was first added.

This list and the associated code (with the two patches just sent to the
OE-core list) has been tested on one version of each distro with all
available updates applied:

Fedora 16
Debian 6.04
OpenSuSE 12.1
Ubuntu 11.10
CentOS 6.2


The following changes since commit 5b78c7d559dd96b414727b85205958bd3f2ece2e:

  libproxy: remove dependency on gconf when x11 not in DISTRO_FEATURES (2012-04-18 00:31:29 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/sanity-distros
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/sanity-distros

Paul Eggleton (1):
  conf/distro/poky.conf: set SANITY_TESTED_DISTROS

 meta-yocto/conf/distro/poky.conf |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

-- 
1.7.5.4


