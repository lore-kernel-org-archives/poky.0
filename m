Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DAF6E00828; Mon, 26 Sep 2016 12:09:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32C51E007B7
	for <poky@yoctoproject.org>; Mon, 26 Sep 2016 12:09:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 26 Sep 2016 12:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,401,1470726000"; d="scan'208";a="1056878347"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2016 12:09:10 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 26 Sep 2016 14:12:41 -0500
Message-Id: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 0/3] New maintainers in perl, python and several other packages
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
X-List-Received-Date: Mon, 26 Sep 2016 19:09:14 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This change is to load balance the packages maintain by Alex Hernandex, splitting
most of them to other developers. Main changes:

* perl: Anibal will maintain most perl recipes
* python: Jose Lamego will maintain python2 and Edwin python3

The following changes since commit 725e66e1d08ae000d8f68455ddca0e192080dc1f:

  meta-environment: ensure corret TOOLCHAIN_CONFIGSITE_NOCACHE value (2016-09-26 10:06:02 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib lsandov1/new-maintainers
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=lsandov1/new-maintainers

Leonardo Sandoval (3):
  maintainers.inc: Change perl maintainer
  maintainers: new maintainers in multiple recipes
  maintainers: Change maintainers for python(3) modules

 meta-poky/conf/distro/include/maintainers.inc | 130 +++++++++++++-------------
 1 file changed, 65 insertions(+), 65 deletions(-)

-- 
2.1.4


