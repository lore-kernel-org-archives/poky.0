Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16B90E00D40; Tue, 14 Nov 2017 14:45:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88939E00D20
	for <poky@yoctoproject.org>; Tue, 14 Nov 2017 14:45:07 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Nov 2017 14:45:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,396,1505804400"; d="scan'208";a="173579061"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga005.jf.intel.com with ESMTP; 14 Nov 2017 14:45:06 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Nov 2017 14:45:01 -0800
Message-Id: <cover.1510699404.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Subject: [PATCH 0/3] genericx86 and genericx86-64 kernel updates
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
X-List-Received-Date: Tue, 14 Nov 2017 22:45:08 -0000

Updates kernels 4.4, 4.9 and 4.12 for genx86 MACHINES

The following changes since commit 4ed19ac8c19afd56d445d84e02b622cb056b8359:

  poky: Switch to post release name/version (2017-11-14 17:26:58 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib aehs29/genx86_master_kernel
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=aehs29/genx86_master_kernel

Alejandro Hernandez (3):
  linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
  linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.12
  linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend  | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.12.3


