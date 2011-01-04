Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E7E84C8086F
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 01:22:29 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 23:22:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,271,1291622400"; d="scan'208";a="589639342"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 23:22:28 -0800
Message-Id: <cover.1294126930.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Mon, 3 Jan 2011 23:42:10 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] single patch for new adt-installer feature
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
X-List-Received-Date: Tue, 04 Jan 2011 07:22:29 -0000

This patch capture the adt-installer feature which includes a recipe file for generating adt-installer tar ball and all the script files and config files for adt-installer.  

Create this single patch to avoid the initial adt-install pull request messy situation for review.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/installer-feature
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/installer-feature

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Liping Ke (1):
  adt-intaller feature implementation, including the bitbake recipe
    file for creating the intaller tar file under /tmp/deploy/sdk, and
    the adt-installer script files and config files

 .../installer/adt-installer/adt_installer          |  363 ++++++++++++++++++++
 .../installer/adt-installer/adt_installer.conf     |   29 ++
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
 .../adt-installer/scripts/adt_installer_internal   |  207 +++++++++++
 .../installer/adt-installer/scripts/data_define    |   35 ++
 .../installer/adt-installer/scripts/extract_rootfs |   63 ++++
 .../installer/adt-installer/scripts/util           |   99 ++++++
 .../installer/adt-installer_1.0.bb                 |   61 ++++
 9 files changed, 871 insertions(+), 0 deletions(-)
 create mode 100755 meta/recipes-devtools/installer/adt-installer/adt_installer
 create mode 100644 meta/recipes-devtools/installer/adt-installer/adt_installer.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/data_define
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/util
 create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb


