Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BA3F4C80BD4
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 04:37:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 02:37:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,277,1291622400"; d="scan'208";a="590064527"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 02:37:26 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PaQm5-0006vw-5u; Wed, 05 Jan 2011 18:39:25 +0800
Message-Id: <cover.1294223859.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Old-Date: Wed, 5 Jan 2011 18:37:39 +0800
Date: Wed, 05 Jan 2011 18:39:25 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] fixing bug #625
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
X-List-Received-Date: Wed, 05 Jan 2011 10:37:27 -0000

Skip building pseudo if the options passing to the bitbake contains one of the followings:
 --version
 -h
 --help
 -p
 --parse-only
 -s
 --show-versions
 -e
 --environment

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug625
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug625

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  scripts/bitbake: Skip building pseudo if necessary.

 scripts/bitbake |   24 +++++++++++++++++++++---
 1 files changed, 21 insertions(+), 3 deletions(-)


