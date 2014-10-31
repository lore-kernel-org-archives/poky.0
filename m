Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50FFAE007B9; Fri, 31 Oct 2014 09:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33CB8E00749
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 09:50:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 31 Oct 2014 09:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,295,1413270000"; d="scan'208";a="629111494"
Received: from kcathuko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.isw.intel.com) ([10.252.122.50])
	by orsmga002.jf.intel.com with ESMTP; 31 Oct 2014 09:50:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 31 Oct 2014 16:50:22 +0000
Message-Id: <cover.1414774177.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH 0/1] Minor poky-tiny.conf cleanup
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
X-List-Received-Date: Fri, 31 Oct 2014 16:50:35 -0000

The following change since commit f19b4e995ea47f9243f152b39337330307453c9f:

  bitbake: bitbake: clarify startup message (2014-10-30 13:39:52 +0000)

is available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/poky-tiny-blacklist
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/poky-tiny-blacklist

Paul Eggleton (1):
  poky-tiny.conf: remove inherit of blacklist

 meta-yocto/conf/distro/poky-tiny.conf | 1 -
 1 file changed, 1 deletion(-)

-- 
1.9.3


