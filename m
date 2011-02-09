Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B09CA4C8006D
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 00:55:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2011 22:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="600852748"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2011 22:55:44 -0800
Message-Id: <cover.1297235725.git.jessica.zhang@intel.com>
Old-Date: Tue, 8 Feb 2011 23:15:25 -0800
Date: Tue, 08 Feb 2011 23:16:41 -0800
To: poky@yoctoproject.org
CC: 
From: Jessica Zhang <jessica.zhang@intel.com>
Subject: [PATCH 0/1] adt-installer changes
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
X-List-Received-Date: Wed, 09 Feb 2011 06:55:45 -0000

From: Jessica Zhang <jessica.zhang@intel.com>

Make changes to point to public adt repo and adopt its directory layout

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/adt-repo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/adt-repo

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Jessica Zhang (1):
  adt-installer: change to adopt the adt public repo directory layout

 .../installer/adt-installer/adt_installer          |    8 ++++----
 .../installer/adt-installer/adt_installer.conf     |    2 +-
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 -------
 .../adt-installer/opkg/conf/opkg-sdk-i686.conf     |    6 ++++++
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    5 ++---
 .../adt-installer/scripts/adt_installer_internal   |    3 ++-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 .../installer/adt-installer_1.0.bb                 |    2 +-
 8 files changed, 17 insertions(+), 18 deletions(-)
 delete mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf


