Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEDC5E00992; Wed,  1 Mar 2017 15:54:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 395F9E00566
	for <poky@yoctoproject.org>; Wed,  1 Mar 2017 15:54:51 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Mar 2017 15:54:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,228,1484035200"; d="scan'208";a="71746560"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2017 15:54:50 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  1 Mar 2017 23:51:34 +0000
Message-Id: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
Subject: [PATCH 0/4] genericx86 and genericx86-64 kernel update
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
X-List-Received-Date: Wed, 01 Mar 2017 23:54:52 -0000

This updates the preferred version for both genericx86 and genericx86-64 MACHINES
to use kernel 4.10, and also updates the SRCREVs for kernel 4.9 to upgrade to
linux 4.9.13

The following changes since commit c854c3feeb48132cb92e4a686adb8d127b4a117e:

  yocto-bsp: remove 4.4 bbappend (2017-02-27 17:24:16 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib hsalejandro/genx86_master_kernel
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=hsalejandro/genx86_master_kernel

Alejandro Hernandez (4):
  linux-yocto: Adds new bbappend to support 4.10 on genericx86 and
    genericx86-64 platforms
  genericx86: Updates PREFERRED_VERSION to use kernel 4.10
  genericx86-64: Updates PREFERRED_VERSION to use kernel 4.10
  linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9

 meta-yocto-bsp/conf/machine/genericx86-64.conf             |  2 +-
 meta-yocto-bsp/conf/machine/genericx86.conf                |  2 +-
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend         | 14 ++++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.9.bbappend          |  8 ++++----
 4 files changed, 20 insertions(+), 6 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend

-- 
2.10.2


