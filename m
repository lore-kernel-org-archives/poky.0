Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D835A4C80335
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:49:16 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 01:49:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="5750850"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 01:49:14 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:53:18 +0800
Message-Id: <cover.1306486223.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/4] fetcher2 git cleanup
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
X-List-Received-Date: Fri, 27 May 2011 08:49:17 -0000

This patch series is some clean up of the git fetcher according to the comment
from mailing list.

The following changes since commit 9bccbc5fbc71b331911b558a2ba15e0a6d0046b4:
  Nitin A Kamble (1):
        tcmode-default: workaround for gcc 4.6.0 failure on beagleboard

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib kyu3/git-cleanup
  http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=kyu3/git-cleanup

Yu Ke (4):
  fetche2 git: change default protocol from rsync to git
  fetcher2 git: unify the nocheckout option format
  fetcher2/git: add document for git fetcher supported options
  fetch2 git: enhance the unpack by using "git checkout"

 bitbake/lib/bb/fetch2/git.py |   51 ++++++++++++++++++++++++++++++++++-------
 1 files changed, 42 insertions(+), 9 deletions(-)


