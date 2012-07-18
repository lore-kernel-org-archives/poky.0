Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0570E00288
	for <poky@yoctoproject.org>; Thu, 19 Jul 2012 11:14:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2012 11:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="168595261"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2012 11:14:43 -0700
From: nitin.a.kamble@intel.com
To: poky@yoctoproject.org
Date: Wed, 18 Jul 2012 11:14:14 -0700
Message-Id: <cover.1342635153.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] add downloadfilename parameter to bitbake wget fetcher
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
X-List-Received-Date: Thu, 19 Jul 2012 18:14:57 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 5b014eae151a1584df4e3d3b96d18f9df3e55665:

  fix my typos in patch headers (2012-07-16 21:45:01 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/misc
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Nitin A Kamble (1):
  bitbake wget fetcher: add parameter: downloadfilename

 bitbake/lib/bb/fetch2/__init__.py |    4 ++++
 bitbake/lib/bb/fetch2/wget.py     |    9 ++++++++-
 2 files changed, 12 insertions(+), 1 deletions(-)

-- 
1.7.3.4


