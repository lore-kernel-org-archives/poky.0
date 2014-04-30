Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D994EE006EC; Wed, 30 Apr 2014 05:40:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 05:40:13 PDT
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64790E003C7
	for <poky@yoctoproject.org>; Wed, 30 Apr 2014 05:40:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Apr 2014 05:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,958,1389772800"; d="scan'208";a="532407934"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2014 05:39:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 30 Apr 2014 13:38:57 +0100
Message-Id: <cover.1398861412.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
Subject: [PATCH 0/2] Automated hardware testing support for reference platforms
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
X-List-Received-Date: Wed, 30 Apr 2014 12:40:13 -0000

On top of the automated hardware testing changes just sent for OE-Core,
this series adds support for automatically deploying images and running
tests on two of the Yocto Project reference hardware platforms 
(beaglebone and edgerouter).

Note that this requires the matching OE-Core patch series to be applied
first.


The following changes since commit 17daa2ba6280304771c5fe52b94eb56f0c087490:

  bitbake: bb.utils, bb.codeparser: Add bb.utils.contains_any (2014-04-29 23:38:54 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/testimage-ref-hw
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/testimage-ref-hw

Paul Eggleton (1):
  meta-yocto-bsp: oeqa/controllers: add EdgeRouterTarget

Stefan Stanacar (1):
  meta-yocto-bsp: oeqa/controllers: add BeagleBoneTarget

 meta-yocto-bsp/lib/oeqa/controllers/__init__.py    |  0
 .../lib/oeqa/controllers/beaglebonetarget.py       | 94 ++++++++++++++++++++++
 .../lib/oeqa/controllers/edgeroutertarget.py       | 89 ++++++++++++++++++++
 3 files changed, 183 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py

-- 
1.9.0


