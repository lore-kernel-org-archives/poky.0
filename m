Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1A784C8007E
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 03:35:41 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2011 01:35:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,479,1291622400"; d="scan'208";a="658192096"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2011 01:35:41 -0800
Message-Id: <cover.1297848716.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Feb 2011 17:31:56 +0800
Date: Wed, 16 Feb 2011 17:35:19 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/3] [Bug#728] corrected environment files content
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
X-List-Received-Date: Wed, 16 Feb 2011 09:35:42 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

1. Added libtool sysroot related param value into environment files.
2. Moved common code between meta-environment.bb and populate_sdk.bbclass into toolchain-script.bbclass.
3. Set CONFIG_SITE to pkgconfig site files for meta-toolchain.bb.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug728
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug728

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (3):
  toolchain-scripts.bbclass: Added libtool sysroot support.
  meta-environment/populate_sdk: moving common code to
    toolchain-script.
  meta-toolchain.bb: Set value for CONFIG_SITE.

 meta/classes/populate_sdk.bbclass          |   14 +----------
 meta/classes/toolchain-scripts.bbclass     |   34 +++++++++++++++++++++++-----
 meta/recipes-core/meta/meta-environment.bb |   16 ++----------
 meta/recipes-core/meta/meta-toolchain.bb   |    4 ++-
 4 files changed, 36 insertions(+), 32 deletions(-)


