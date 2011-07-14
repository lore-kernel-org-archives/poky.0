Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CEEB4C800A1
	for <poky@yoctoproject.org>; Thu, 14 Jul 2011 10:13:06 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2011 08:13:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="27946050"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.207])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2011 08:13:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Jul 2011 16:13:01 +0100
Message-Id: <cover.1310656158.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2] MPC8315E-RDB fixes
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
X-List-Received-Date: Thu, 14 Jul 2011 15:13:07 -0000

Now that I've had a chance to test Poky on an MPC8315E-RDB I've been able
to fix one issue and improve the instructions a little.

The following changes since commit 068839698fe192d8846c0ed4db65861448e8e524:

  eglibc: fix runtime assertion failure (2011-07-13 12:34:30 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/mpc8315erdb-fixes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/mpc8315erdb-fixes

Paul Eggleton (2):
  linux-yocto: allow configuration of MAC addresses for mpc8315e-rdb
  README.hardware: update MPC8315E-RDB instructions

 README.hardware                                    |   62 +++++++++++++++-----
 .../linux/linux-yocto/mpc8315e-rdb-dts.patch       |   28 +++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   16 +++++
 3 files changed, 92 insertions(+), 14 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch

-- 
1.7.4.1


