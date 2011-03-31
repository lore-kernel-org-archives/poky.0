Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5ED584C806FA
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 08:46:14 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Mar 2011 06:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,275,1299484800"; d="scan'208";a="673728730"
Received: from unknown (HELO helios) ([10.255.12.217])
	by fmsmga002.fm.intel.com with SMTP; 31 Mar 2011 06:46:12 -0700
Received: by helios (sSMTP sendmail emulation); Thu, 31 Mar 2011 14:46:11 +0100
Message-Id: <cover.1301578942.git.paul.eggleton@linux.intel.com>
Old-Date: Thu, 31 Mar 2011 14:42:22 +0100
Date: Thu, 31 Mar 2011 14:46:11 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] remove u-boot flashing instructions for mpc8315e-rdb
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
X-List-Received-Date: Thu, 31 Mar 2011 13:46:14 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Upgrading u-boot is apparently not necessary with current board revisions,
and these instructions may not work properly anyway (our toolchain seems not
to be able to compile u-boot in the way described), and given that they are
potentially risky they should be removed.

Pull URL: git://git.openembedded.org/openembedded-core-contrib
  Branch: paule/readme-hardware-fix3
  Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=paule/readme-hardware-fix3

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  README.hardware: remove u-boot flashing instructions for mpc8315e-rdb

 README.hardware |   29 +++--------------------------
 1 files changed, 3 insertions(+), 26 deletions(-)


