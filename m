Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C6F04C803A5
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 07:50:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 05:50:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="683193423"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 05:50:34 -0800
Message-Id: <cover.1291296360.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 21:26:00 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/8]Update 8 recipes license checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 13:50:35 -0000

Hi Saul,

	This contains 8 recipes license checksum update, please review it.
	One recipe "patch" need Nitin to double check,I have contacted him. Becaue of the recipe version is 2.5.9, but it downloads upstrem of 2.5.4, it will lead to an error when I get license checksum.

Thanks
Lei

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/chksum
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (8):
  initscripts:Add a patch of GPLv2 license and its checksum to bb file
  initramfs-live-install:Add license checksum to bb file
  initramfs-boot:Add license checksum to bb file
  initramfs-live-boot:Add license checksum to bb file
  fstests:Add license checksum and update the GPL information
  eee-acpi-scripts:Add license checksum and update the GPL information
  keymaps:Add license checksum and update the GPL information
  modutils-initscripts:Add license checksum to bb file

 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    4 +-
 meta/recipes-bsp/keymaps/files/GPLv2.patch         |  345 ++++++++++++++++++++
 meta/recipes-bsp/keymaps/keymaps_1.0.bb            |    6 +-
 .../initrdscripts/initramfs-boot_1.0.bb            |    2 +-
 .../initrdscripts/initramfs-live-boot_1.0.bb       |    2 +-
 .../initrdscripts/initramfs-live-install_1.0.bb    |    2 +-
 .../initscripts/initscripts-1.0/GPLv2.patch        |  345 ++++++++++++++++++++
 meta/recipes-core/initscripts/initscripts_1.0.bb   |    4 +-
 meta/recipes-graphics/fstests/fstests_svn.bb       |    3 +-
 meta/recipes-kernel/modutils/files/PD.patch        |   12 +
 .../modutils/modutils-initscripts.bb               |    4 +-
 11 files changed, 719 insertions(+), 10 deletions(-)
 create mode 100644 meta/recipes-bsp/keymaps/files/GPLv2.patch
 create mode 100644 meta/recipes-core/initscripts/initscripts-1.0/GPLv2.patch
 create mode 100644 meta/recipes-kernel/modutils/files/PD.patch


