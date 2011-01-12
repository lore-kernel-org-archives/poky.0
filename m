Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE05E4C80BEF
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 20:09:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jan 2011 18:09:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,310,1291622400"; d="scan'208";a="645952420"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2011 18:09:47 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PcqBI-0003Wj-Um; Wed, 12 Jan 2011 10:11:25 +0800
Message-Id: <cover.1294798118.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Old-Date: Wed, 12 Jan 2011 10:08:38 +0800
Date: Wed, 12 Jan 2011 10:11:24 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Bug #651 fixing
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
X-List-Received-Date: Wed, 12 Jan 2011 02:09:48 -0000

Due to the gcc fixing in commit f13cb20, the c++ include dir is not needed to be
included in the CXXFLAGS environment variable in the meta-environment files.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug651
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug651

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  meta-environment: Remove c++ include dir from CXXFLAGS.

 meta/classes/toolchain-scripts.bbclass     |    2 +-
 meta/recipes-core/meta/meta-environment.bb |    4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)


