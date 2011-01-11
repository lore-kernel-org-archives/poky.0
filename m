Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C9AB4C81021
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 17:06:21 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2011 15:06:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,309,1291622400"; d="scan'208";a="592010004"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 11 Jan 2011 15:06:21 -0800
Message-Id: <cover.1294788389.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 11 Jan 2011 15:26:29 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Consolidated pull request for ADT Installer work
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
X-List-Received-Date: Tue, 11 Jan 2011 23:06:21 -0000

adt-intaller feature implementation, including the bitbake recipe file for creating the intaller tar file under /tmp/deploy/sdk, and the adt-installer script files and config files, set the reference to adt repo entry empty before it's setup


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/installer-feature
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/installer-feature

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Liping Ke (1):
  adt-intaller feature implementation, including the bitbake recipe
    file for creating the intaller tar file under /tmp/deploy/sdk, and
    the adt-installer script files and config files, set the reference
    to adt repo entry empty before it's setup

 .../installer/adt-installer/adt_installer          |  367 ++++++++++++++++++++
 .../installer/adt-installer/adt_installer.conf     |   52 +++
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
 .../adt-installer/scripts/adt_installer_internal   |  209 +++++++++++
 .../installer/adt-installer/scripts/data_define    |   40 +++
 .../installer/adt-installer/scripts/extract_rootfs |   67 ++++
 .../installer/adt-installer/scripts/util           |  104 ++++++
 .../installer/adt-installer_1.0.bb                 |   84 +++++
 9 files changed, 937 insertions(+), 0 deletions(-)
 create mode 100755 meta/recipes-devtools/installer/adt-installer/adt_installer
 create mode 100644 meta/recipes-devtools/installer/adt-installer/adt_installer.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/data_define
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/util
 create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb


