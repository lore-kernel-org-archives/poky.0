Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D7154C81065
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 21:24:09 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 19:23:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="863885537"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 19:23:55 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1POMAe-0002k3-6I; Fri, 03 Dec 2010 11:18:52 +0800
Message-Id: <cover.1291346206.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 3 Dec 2010 11:16:46 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] fix occasional build failure of libnl
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
X-List-Received-Date: Fri, 03 Dec 2010 03:24:09 -0000


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He
---


Qing He (1):
  libnl: fix parallel make

 .../libnl/libnl-2.0/fix-makefile.patch             |   22 ++++++++++++++++++++
 meta/recipes-support/libnl/libnl_2.0.bb            |    7 ++++-
 2 files changed, 27 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-support/libnl/libnl-2.0/fix-makefile.patch


