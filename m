Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FDA24C80039
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 01:19:08 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 23:19:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="354290789"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 23:19:06 -0800
Message-Id: <cover.1291014682.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 29 Nov 2010 15:11:22 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/6] Update five recipes License information
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
X-List-Received-Date: Mon, 29 Nov 2010 07:19:08 -0000

This contains five recipes license MD5sum update, four of them are local recipes. And also update the insane.bbclass for local recipes' license is  "n/a"

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/chksum4
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum4

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (6):
  insane.bbclass: Add local file checksum condition for 'n/a'
  Keymaps:Add license checksum 'n/a' for this local recipe
  initscripts:Add license checksum 'n/a' for local recipes
  eee-acpi-scripts:Add license checksum 'n/a' for this local recipe
  modutils-initscripts:Add license checksum 'n/a' for this local recipe
  gthumb:Add license checksum to bb file

 meta/classes/insane.bbclass                        |    4 ++++
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    2 +-
 meta/recipes-bsp/keymaps/keymaps_1.0.bb            |    1 +
 meta/recipes-core/initscripts/initscripts_1.0.bb   |    1 +
 meta/recipes-gnome/gthumb/gthumb_2.12.0.bb         |    1 +
 .../modutils/modutils-initscripts.bb               |    1 +
 6 files changed, 9 insertions(+), 1 deletions(-)


