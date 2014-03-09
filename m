Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8ED5E00726
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Mar 2014 11:49:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,619,1389772800"; d="scan'208";a="496685848"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 09 Mar 2014 11:49:18 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id 7A85A6A4083
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:06 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Sun,  9 Mar 2014 20:49:15 +0200
Message-Id: <cover.1394390131.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [RFC PATCH 0/4] Master image generation and testing
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
X-List-Received-Date: Sun, 09 Mar 2014 18:49:21 -0000

Hello,

This is what I currently use for doing completely automated testing
on a genericx86-64 image installed on NUC. More details on the commit
messages.

This series is sent against stefans/gummiboot branch from poky-contrib (
as gummiboot is required as it obeys the LoadEntryOneShot EFI variable).
The first patch is just for build convenience here, not to get merged 
(or one has to configure his kernel manually or with the
various ways available). It's my opinion that those EFI options should
go into the default cfg/efi fragment. (CONFIG_EFI_STUB is at least
required by gummiboot to actually boot).
The second patch is for review/diff convenience of the install-efi.sh script

Also see YB#1596 and it's sub-bug #5614 for a bit of background.

Any comments, questions, most welcome.

Cheers,
Stefan


Please review the following changes for suitability for inclusion. If you have
any objections or suggestions for improvement, please respond to the patches. If
you agree with the changes, please provide your Acked-by.

The following changes since commit 1444a02c93e9e64a82f4a9ba80dc693e2b5e56db:

  classes: Add gummiboot class (2014-03-09 17:11:28 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/masterimage
  http://git.yoctoproject.org/cgit.cgi//log/?h=stefans/masterimage

Stefan Stanacar (4):
  linux-yocto_3.10.bbappend: EFI kernel config for easier building
  meta-yocto-bsp: copy install scripts from meta (dummy commit)
  meta-yocto-bsp: add master image for testing purposes
  meta-yocto-bsp: add a controller for EFI targets where a master image
    is running

 meta-yocto-bsp/lib/oeqa/controllers/__init__.py    |   0
 meta-yocto-bsp/lib/oeqa/controllers/masterimage.py |  88 +++++++++
 .../images/core-image-testmaster-initramfs.bb      |  20 ++
 .../recipes-core/images/core-image-testmaster.bb   |  16 ++
 .../initrdscripts/files/init-install-efi-testfs.sh | 199 +++++++++++++++++++
 .../initrdscripts/files/init-install-testfs.sh     | 211 +++++++++++++++++++++
 .../initramfs-live-install-efi-testfs_1.0.bb       |  20 ++
 .../initramfs-live-install-testfs_1.0.bb           |  20 ++
 .../recipes-kernel/linux/files/efioptions.cfg      |   4 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   5 +
 meta/lib/oeqa/runtime/ssh.py                       |   2 +
 11 files changed, 585 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/masterimage.py
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-testmaster-initramfs.bb
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-testmaster.bb
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-efi-testfs_1.0.bb
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-testfs_1.0.bb
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/efioptions.cfg

-- 
1.8.5.3


