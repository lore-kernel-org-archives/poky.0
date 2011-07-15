Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC93C4C800C1
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 10:12:07 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jul 2011 08:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,536,1304319600"; d="scan'208";a="28104730"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.182])
	by orsmga001.jf.intel.com with ESMTP; 15 Jul 2011 08:12:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 15 Jul 2011 16:12:03 +0100
Message-Id: <cover.1310741956.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/2] MPC8315E-RDB fixes v2
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
X-List-Received-Date: Fri, 15 Jul 2011 15:12:08 -0000

Fix the default ethernet MAC addresses so that networking works at boot time,
and improve our setup instructions for this machine.

(Since v1, simplify things by removing the configurable MAC address
variables, as all of these boards should have the same MAC addresses from
the factory.)

Note, Bruce may choose to merge the kernel patch into the linux-yocto
repository itself.

The following changes since commit fa4bcfdb73167f8159b88e5a4d711c0d37627a70:

  bb-matrix: correct BB and PM number canonicalization (2011-07-14 22:23:09 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/mpc8315erdb-fixes-2
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/mpc8315erdb-fixes-2

Paul Eggleton (2):
  linux-yocto: fix ethernet at boot time on MPC8315E-RDB
  README.hardware: update MPC8315E-RDB instructions

 README.hardware                                    |   55 +++++++++++++++-----
 .../linux/linux-yocto/mpc8315e-rdb-dts.patch       |   27 ++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |    4 ++
 3 files changed, 72 insertions(+), 14 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch

-- 
1.7.4.1


