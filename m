Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABCDF4C802F2
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 12:25:35 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Mar 2011 10:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="722979036"
Received: from unknown (HELO helios) ([10.255.12.173])
	by orsmga001.jf.intel.com with SMTP; 22 Mar 2011 10:25:34 -0700
Received: by helios (sSMTP sendmail emulation); Tue, 22 Mar 2011 17:25:29 +0000
Message-Id: <cover.1300814586.git.paul.eggleton@linux.intel.com>
Old-Date: Tue, 22 Mar 2011 17:23:06 +0000
Date: Tue, 22 Mar 2011 17:25:29 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 0/1] README.hardware: add Freescale MPC8315E-RDB; other minor tweaks
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
X-List-Received-Date: Tue, 22 Mar 2011 17:25:35 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Add instructions for Freescale MPC8315E-RDB and make a few other minor 
tweaks for 1.0. 

I think we could do better by not requiring nfs root setup and using Poky to 
build u-boot rather than building it by hand, but I don't have this board to
test any alternatives.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/readme-hardware-fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/readme-hardware-fix2

Thanks,
    Paul Eggleton <paul.eggleton@linux.intel.com>
---


Paul Eggleton (1):
  README.hardware: add Freescale MPC8315E-RDB; other minor tweaks

 README.hardware |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 69 insertions(+), 1 deletions(-)


