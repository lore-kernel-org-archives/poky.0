Return-Path: <shane.wang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FCFAE0030C
	for <poky@pokylinux.org>; Tue, 17 Jan 2012 00:01:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2012 00:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="99417143"
Received: from yocto-build5.sh.intel.com (HELO localhost) ([10.239.48.2])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2012 00:01:51 -0800
From: Shane Wang <shane.wang@intel.com>
To: poky@pokylinux.org,
	paul.eggleton@linux.intel.com
Date: Tue, 17 Jan 2012 16:15:04 +0800
Message-Id: <cover.1326787792.git.shane.wang@intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] meta-baryon: correct the SRC_URI for libgsm
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
X-List-Received-Date: Tue, 17 Jan 2012 08:01:52 -0000

correct the SRC_URI for libgsm in meta-baryon

The following changes since commit d662381a38fa5fd31a87a6c26d2efa5065e76a27:

  webmin: add missing patch header info (2011-11-09 14:09:23 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib shane/fix-1878
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=shane/fix-1878

Shane Wang (1):
  meta-baryon: correct the SRC_URI for libgsm

 recipes-multimedia/libgsm/libgsm_1.0.12.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.6


