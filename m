Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 778BBE00A53; Tue, 28 Jul 2015 03:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36476E00A31
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 03:19:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jul 2015 03:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,562,1432623600"; d="scan'208";a="737021879"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.9.210])
	by orsmga001.jf.intel.com with ESMTP; 28 Jul 2015 03:19:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 28 Jul 2015 11:19:01 +0100
Message-Id: <cover.1438078723.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [meta-yocto-bsp][PATCH 0/1] Restore gummiboot tests
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
X-List-Received-Date: Tue, 28 Jul 2015 10:19:33 -0000

The following changes since commit 1b88b7426a3c5e3b4427501e67df141b0ee17934:

  bitbake: build: Exit scripts with result of last shell function (2015-07-27 23:29:16 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/oe-selftest-gummiboot
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/oe-selftest-gummiboot

Paul Eggleton (1):
  oe-selftest: restore gummiboot tests

 meta-yocto-bsp/lib/oeqa/selftest/__init__.py  |  0
 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py | 83 +++++++++++++++++++++++++++
 2 files changed, 83 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py

-- 
2.1.0


