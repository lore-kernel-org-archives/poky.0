Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF8844C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 21:08:50 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Feb 2011 19:08:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,483,1291622400"; d="scan'208";a="603476241"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 16 Feb 2011 19:08:42 -0800
Message-Id: <cover.1297912022.git.lianhao.lu@intel.com>
Old-Date: Thu, 17 Feb 2011 11:07:02 +0800
Date: Thu, 17 Feb 2011 11:08:16 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/3] [Bug #728] corrected environment files content
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
X-List-Received-Date: Thu, 17 Feb 2011 03:08:50 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

1. Added libtool sysroot related param value into environment files.
2. Moved common code between meta-environment.bb and populate_sdk.bbclass into toolchain-script.bbclass.
3. Set CONFIG_SITE to correct value for autoconf config site.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug728
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug728

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (3):
  toolchain-scripts.bbclass: Added libtool sysroot support.
  toolchain-script/populate_sdk/meta-toolchain: moving common code.
  recipe-core/meta/meta-toolchain.bb: Set correct value for
    CONFIG_SITE.

 meta/classes/populate_sdk.bbclass          |   13 +---------
 meta/classes/toolchain-scripts.bbclass     |   34 +++++++++++++++++++++++-----
 meta/recipes-core/meta/meta-environment.bb |   16 ++----------
 meta/recipes-core/meta/meta-toolchain.bb   |    4 ++-
 4 files changed, 36 insertions(+), 31 deletions(-)


