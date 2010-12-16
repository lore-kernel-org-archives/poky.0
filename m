Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA7D14C80048
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 03:24:02 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 01:24:02 -0800
Message-Id: <5b55a1$ivdmfp@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="636934649"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 01:24:01 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Thu, 16 Dec 2010 17:02:50 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 0/3] miscellaneous sstate fixes
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
X-List-Received-Date: Thu, 16 Dec 2010 09:24:03 -0000

The major fix in this patchset is about linux-yocto, which is the rest blocker from
a complete sstate reuse (it further impacts task-poky-boot and the build time is
long). However this fix will cause one different behavior. After wiping out DATETIME
from deps, now the kernel image name will be same as the one extracted from sstate
package after reusing it. I think this should be fine since at release time DATETIME
will be removed anyway

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (3):
  siggen.py: make sure stamp directory existing
  kernel.bbclass: rename do_deploy and add vardepsexclusive accordingly
  siggen.py: print taskname when seeing mismatched hash in cache

 bitbake/lib/bb/siggen.py    |    4 +++-
 meta/classes/kernel.bbclass |    4 +++-
 meta/conf/distro/poky.conf  |    2 ++
 3 files changed, 8 insertions(+), 2 deletions(-)


