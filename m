Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAE334C8115C
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:07:57 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 07:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690200814"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 07:07:33 -0800
Message-Id: <cover.1293116649.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 07:04:09 -0800
Date: Thu, 23 Dec 2010  7:07:12 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/4] Additional recipe fixes for LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 15:07:58 -0000

More recipes missing LIC_FILES_CHKSUM and a fix to apr-util

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (4):
  cross-localedef: add LIC_FILES_CHKCSUM
  qemu-helper: add LIC_FILES_CHKSUM
  unifdef: add LIC_FILES_CHKSUM
  apr-util: add --without-odbc to EXTRA_OECONF

 .../eglibc/cross-localedef-native_2.12.bb          |    7 +++++++
 .../qemu/qemu-helper-native_1.0.bb                 |    2 +-
 .../unifdef/unifdef-native_2.6.18+git.bb           |    2 +-
 meta/recipes-support/apr/apr-util_1.3.4.bb         |    3 ++-
 4 files changed, 11 insertions(+), 3 deletions(-)

-- 
1.7.2.3


