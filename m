Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEA76E00CA3; Thu, 15 Mar 2018 23:16:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A689E007F2
	for <poky@yoctoproject.org>; Thu, 15 Mar 2018 23:16:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Mar 2018 23:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,313,1517904000"; d="scan'208";a="208730379"
Received: from peggleto-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.png.intel.com) ([172.30.199.135])
	by orsmga005.jf.intel.com with ESMTP; 15 Mar 2018 23:16:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Mar 2018 14:16:37 +0800
Message-Id: <cover.1521180913.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [PATCH 0/1] Fix disparity with bitbake repo
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
X-List-Received-Date: Fri, 16 Mar 2018 06:16:47 -0000

This is a poky-only fix, see commit message for details.


The following changes since commit 0fd6d0dd0041929d60111868ca3575d9d9bf9ac3:

  linux-yocto/4.12: backport bugfixes for x86 (2018-03-15 06:27:20 -0700)

are available in the Git repository at:

  git://push.yoctoproject.org/poky-contrib paule/poky-shell-py-remove

Paul Eggleton (1):
  lib/bb/shell.py: drop

 bitbake/lib/bb/shell.py | 820 ------------------------------------------------
 1 file changed, 820 deletions(-)
 delete mode 100644 bitbake/lib/bb/shell.py

-- 
2.14.3


