Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73E4B4C80BCF
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 15:01:22 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L1KMV027851;
	Mon, 8 Nov 2010 13:01:20 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:01:27 -0500
Message-Id: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org
Subject: [PULL] qemumips wacom tablet support
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
X-List-Received-Date: Mon, 08 Nov 2010 21:01:22 -0000

The following changes fix the qemumips target to have wacom USB
tablet support. This fixes bugid #394.

The following changes since commit 724088189e699c67adf949f5baaa8de83483c82c:
  Richard Purdie (1):
        Poky -> Yocto name change

are available in the git repository at:

  ssh://git@git.pokylinux.org/poky-contrib zedd/kernel

Bruce Ashfield (2):
      qemumips: re-enable wacom and standard USB UI options
      wrs_meta: add USB options for wacom tablet support

J. Aaron Gamble (2):
      Added qemumips /etc/pointercal file for touchscreen calibration
      tslib: 32bit big endian support

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../formfactor/files/qemumips/machconfig           |    4 +-
 .../pointercal/files/qemumips/pointercal           |    1 +
 .../tslib/tslib/32bitBE-support.patch              |   52 ++++++++++++++++++++
 meta/recipes-graphics/tslib/tslib_1.0.bb           |    4 +-
 scripts/poky-qemu-internal                         |    2 +-
 6 files changed, 60 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-bsp/pointercal/files/qemumips/pointercal
 create mode 100644 meta/recipes-graphics/tslib/tslib/32bitBE-support.patch



