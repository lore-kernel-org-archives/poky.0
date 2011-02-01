Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75A504C80082
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 01:50:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2011 23:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,409,1291622400"; d="scan'208";a="883071056"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2011 23:50:03 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PkAu2-0003T7-SJ; Tue, 01 Feb 2011 15:43:54 +0800
Message-Id: <cover.1296546158.git.qing.he@intel.com>
Old-Date: Tue, 1 Feb 2011 15:42:38 +0800
Date: Tue, 01 Feb 2011 15:43:54 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 0/1] fix bug 690: quilt-native build failure on opensuse 11.3
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
X-List-Received-Date: Tue, 01 Feb 2011 07:50:04 -0000

From: Qing He <qing.he@intel.com>


The new patch version on OpenSuSE 11.3 causes the configure script to fail.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (1):
  quilt: fix patch version detection

 meta/recipes-devtools/quilt/quilt-native_0.48.bb   |    2 +-
 meta/recipes-devtools/quilt/quilt.inc              |    3 +-
 .../quilt/quilt/patch-version-detection.patch      |   29 ++++++++++++++++++++
 meta/recipes-devtools/quilt/quilt_0.48.bb          |    2 +-
 4 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-devtools/quilt/quilt/patch-version-detection.patch


