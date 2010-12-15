Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FAF04C811A8
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 09:46:25 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 07:46:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868543285"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 07:46:24 -0800
Message-Id: <cover.1292427843.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 15:44:03 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] Increase the usefulness of external-python-tarball
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
X-List-Received-Date: Wed, 15 Dec 2010 15:46:26 -0000

Reports lead me to believe that the chrpath dependency is also hard to
satisfy on older distributions. This patchset adds it to the
external-python-tarball.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (2):
  chrpath: add nativesdk variant
  external-python-tarball: add chrpath to the tarball

 meta/recipes-core/meta/external-python-tarball.bb |    4 +++-
 meta/recipes-devtools/chrpath/chrpath_0.13.bb     |    2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
1.7.3.3


