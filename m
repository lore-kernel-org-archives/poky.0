Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99BC14C800E0
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 12:43:56 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2011 10:43:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; d="scan'208";a="16876712"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.133])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2011 10:43:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Jun 2011 18:43:51 +0100
Message-Id: <cover.1307727577.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1] meta-yocto: FILESEXTRAPATHS_prepend := in all bbappends
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
X-List-Received-Date: Fri, 10 Jun 2011 17:43:56 -0000

The following changes since commit b30cb584a738915113e88b7db1028d53b2bae5f9:

  Revert "gcc: rebase the patch to avoid patch rejection" (2011-06-10 13:30:28 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/filespath
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/filespath

Paul Eggleton (1):
  meta-yocto: use FILESEXTRAPATHS_prepend := in all bbappends

 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    4 +---
 .../recipes-core/netbase/netbase_4.45.bbappend     |    4 +---
 meta-yocto/recipes-core/uclibc/uclibc_git.bbappend |    4 +---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    4 +---
 4 files changed, 4 insertions(+), 12 deletions(-)

-- 
1.7.4.1


