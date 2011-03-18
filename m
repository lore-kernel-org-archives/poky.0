Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B0A44C805A8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:31:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 02:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,204,1299484800"; d="scan'208";a="721541896"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 02:31:37 -0700
Message-Id: <cover.1300440492.git.lianhao.lu@intel.com>
Old-Date: Fri, 18 Mar 2011 17:28:12 +0800
Date: Fri, 18 Mar 2011 17:30:52 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] Bug #908: Added sysroot to CPPFLAGS
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
X-List-Received-Date: Fri, 18 Mar 2011 09:31:38 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added CPPFLAGS into environment files and added --sysroot to it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug908
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug908

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  toolchain-scripts.bbclass: Added --sysroot to CPPFLAGS.

 meta/classes/toolchain-scripts.bbclass     |    2 ++
 meta/recipes-core/meta/meta-environment.bb |    2 +-
 meta/recipes-core/meta/meta-toolchain.bb   |    2 +-
 3 files changed, 4 insertions(+), 2 deletions(-)


