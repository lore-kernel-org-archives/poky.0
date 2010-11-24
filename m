Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 395854C80B6B
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 23:17:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2010 21:17:45 -0800
Message-Id: <b9dded$h695k8@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,246,1288594800"; d="scan'208";a="577017488"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by orsmga002.jf.intel.com with ESMTP; 23 Nov 2010 21:17:44 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Wed, 24 Nov 2010 12:58:15 +0800
To: poky@pokylinux.org
Subject: [sstate] fix FILESEXTRAPATHS expansion
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
X-List-Received-Date: Wed, 24 Nov 2010 05:17:46 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/sstate
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/sstate

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (1):
  *.bbappend: don't expand FILESEXTRAPATHS immediately

 documentation/bsp-guide/bsp.xml                    |    2 +-
 .../recipes/formfactor/formfactor_0.0.bbappend     |    2 +-
 .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
 meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)


