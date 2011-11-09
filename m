Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C213E00307
	for <poky@yoctoproject.org>; Wed,  9 Nov 2011 08:18:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Nov 2011 08:18:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,484,1315206000"; d="scan'208";a="34918121"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.129])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Nov 2011 08:18:00 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Nov 2011 16:17:55 +0000
Message-Id: <cover.1320855375.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/2] README.hardware fixes
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
X-List-Received-Date: Wed, 09 Nov 2011 16:18:03 -0000

A couple of fixes for the Poky README.hardware. These should also go into the
edison branch as they are applicable there as well.


The following changes since commit 23d2eaf9d283cae47e52d1151f0d4ad53bbbe8a0:

  python: skip setup.py 'import check' when cross-compiling (2011-11-08 21:48:30 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/readme-hw
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/readme-hw

Paul Eggleton (2):
  README.hardware: update atom-pc instructions
  README.hardware: declare support for BeagleBoard xM rev B

 README.hardware |   28 ++++++++++------------------
 1 files changed, 10 insertions(+), 18 deletions(-)

-- 
1.7.5.4


