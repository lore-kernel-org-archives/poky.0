Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D81E6E00CA1; Mon, 25 Apr 2016 02:19:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51100E006D3
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 02:19:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 25 Apr 2016 02:19:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,532,1455004800"; d="scan'208";a="965856824"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.6.142])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2016 02:19:05 -0700
Message-ID: <1461575944.3909.10.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>, poky@yoctoproject.org
Date: Mon, 25 Apr 2016 10:19:04 +0100
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Subject: [jethro] Backport request for meta-yocto
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
X-List-Received-Date: Mon, 25 Apr 2016 09:19:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Robert,

Could you please backport b253c6073be44090a19d1743deb58ef566853056 for
meta-yocto in jethro?

http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto/commit/?id=b253c60
73be44090a19d1743deb58ef566853056

This helps alleviate some issues with the connectivity check, i.e. http
s://bugzilla.yoctoproject.org/show_bug.cgi?id=9483

Thanks,

Joshua



