Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68718E00B32
	for <poky@yoctoproject.org>; Mon, 17 Mar 2014 08:42:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Mar 2014 08:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,670,1389772800"; d="scan'208";a="493674184"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 17 Mar 2014 08:42:06 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.60])
	by linux.intel.com (Postfix) with ESMTP id 529A06A4007
	for <poky@yoctoproject.org>; Mon, 17 Mar 2014 08:41:53 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Mon, 17 Mar 2014 17:42:13 +0200
Message-Id: <cover.1395069742.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [RFC PATCH v2 0/3] Master image generation and testing
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Mar 2014 15:42:45 -0000

Hello,

This is what I currently use for doing automated deployment
for a genericx86-64 image. More details on the commit
messages. There is nothing particular to genericx86-64,
it should work on any EFI-enabled device with gummiboot as bootloader.

Changes since v2:
  - droped the kernel options patch, the required options are now in the default
config fragments. You still neeed to build with an updated SRCREV though, as the kernel
recipes haven't picked up the changes yet.
(SRCREV_meta_pn-linux-yocto = "${AUTOREV}" in local.conf)
  - impove a bit the master image recipe (inherit core-image and add to IMAGE_INSTALL instead
of overwriting IMAGE_INSTALL, that ensures we pick up the correct modules, as core-image
brings in packagegroup-base-extended)
  - tweaks and fixes for GenericEfi - I did a complete test run for a NUC device connected
to a web power strip. The powercontrol command is an expect script that does ssh on a device
which controls the power strip (this is particular to a network setup that
I can't control). It still works for the no power command available case.

Also see YB#1596 and it's sub-bug #5614 for a bit of background.
Any comments, questions, most welcome.

Cheers,
Stefan


Please review the following changes for suitability for inclusion. If you have
any objections or suggestions for improvement, please respond to the patches. If
you agree with the changes, please provide your Acked-by.

The following changes since commit 92155fde2079251739f455bca599a52cd21ef12b:

  bitbake: runqueue: Don't error if we never setup workers (2014-03-17 15:04:46 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/masterimage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/masterimage

Stefan Stanacar (3):
  meta-yocto-bsp: copy install scripts from core (meta)
  meta-yocto-bsp: add master image for testing purposes
  meta-yocto-bsp: add a controller for EFI targets

 meta-yocto-bsp/lib/oeqa/controllers/__init__.py    |   0
 meta-yocto-bsp/lib/oeqa/controllers/masterimage.py | 121 ++++++++++++
 .../images/core-image-testmaster-initramfs.bb      |  20 ++
 .../recipes-core/images/core-image-testmaster.bb   |  15 ++
 .../initrdscripts/files/init-install-efi-testfs.sh | 199 +++++++++++++++++++
 .../initrdscripts/files/init-install-testfs.sh     | 211 +++++++++++++++++++++
 .../initramfs-live-install-efi-testfs_1.0.bb       |  20 ++
 .../initramfs-live-install-testfs_1.0.bb           |  20 ++
 meta/lib/oeqa/runtime/ssh.py                       |   2 +
 9 files changed, 608 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/masterimage.py
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-testmaster-initramfs.bb
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-testmaster.bb
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-efi-testfs_1.0.bb
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-testfs_1.0.bb

-- 
1.8.5.3


