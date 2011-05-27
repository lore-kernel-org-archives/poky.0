Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9A0E4C800AF
	for <poky@yoctoproject.org>; Fri, 27 May 2011 04:11:09 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2011 02:11:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="2821623"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 02:11:08 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QPswR-0007hO-Sa; Fri, 27 May 2011 17:02:47 +0800
From: Qing He <qing.he@intel.com>
To: poky@yoctoproject.org
Date: Fri, 27 May 2011 17:02:37 +0800
Message-Id: <cover.1306486855.git.qing.he@intel.com>
X-Mailer: git-send-email 1.7.0
Subject: [PATCH 0/1] Fix rpm rootfs generation
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
X-List-Received-Date: Fri, 27 May 2011 09:11:09 -0000

rpm-native is fixed by the patch.

The following changes since commit 9bccbc5fbc71b331911b558a2ba15e0a6d0046b4:
  Nitin A Kamble (1):
        tcmode-default: workaround for gcc 4.6.0 failure on beagleboard

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib qhe/fix
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Qing He (1):
  rpm: fix fprint pointer issue

 .../rpm/rpm/fprint-pointer-fix.patch               |   35 ++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    3 +-
 2 files changed, 37 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch


