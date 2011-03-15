Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E57614C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 04:43:40 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 02:43:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="720286981"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 02:43:39 -0700
Message-Id: <cover.1300182097.git.lianhao.lu@intel.com>
Old-Date: Tue, 15 Mar 2011 17:41:37 +0800
Date: Tue, 15 Mar 2011 17:42:46 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] Fix missing dependencies in package-index.bb
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
X-List-Received-Date: Tue, 15 Mar 2011 09:43:41 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Fixed bug #871. Added missing dependencies on opkg-utils-native and opkg-native to package-index.bb.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug871
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug871

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  package-index.bb: Added missing dependencies.

 meta/recipes-core/meta/package-index.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


