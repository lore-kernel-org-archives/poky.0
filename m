Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 990A24C8009A
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:19:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Mar 2011 18:19:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="896098777"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2011 18:19:54 -0800
Message-Id: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 18:17:39 -0800
Date: Thu, 10 Mar 2011 18:19:52 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 00/12] Consolidated Pull Request
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
X-List-Received-Date: Fri, 11 Mar 2011 02:19:59 -0000

From: Saul Wold <sgw@linux.intel.com>

Richard,

This contains the openssh/drop IMAGE_FEATURE Code, along
changes for RPM rootfs generation and a Kernel Update

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/oe-core
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Bruce Ashfield (1):
  linux-yocto: update to 2.6.37.3

Mark Hatle (3):
  package.bbclass: Change the debug directory to avoid conflicts
  package_rpm: Fix rootfs generation
  gcc-runtime: Fix dbg files

Paul Eggleton (1):
  gst-plugins-good: remove dependency on hal

Scott Garman (7):
  task-base, task-poky-basic, task-poky: Remove hard-coded references
    to dropbear
  openssh: allow the openssh meta package to be empty
  task-poky-ssh.bb: new task for ssh services
  poky-image.bbclass: add ssh-server as an IMAGE_FEATURES option
  poky-image.bbclass: add ssh-server to SATO_IMAGE_FEATURES
  poky-image-lsb: add ssh-server to IMAGE_FEATURES
  poky-image-basic: add ssh-server to IMAGE_FEATURES

 meta/classes/package.bbclass                       |   10 ++++++-
 meta/classes/package_rpm.bbclass                   |    8 +++++-
 meta/classes/poky-image.bbclass                    |    8 +++++-
 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 meta/recipes-connectivity/openssh/openssh_5.6p1.bb |    4 ++-
 meta/recipes-core/tasks/task-base.bb               |    8 +-----
 meta/recipes-core/tasks/task-poky-ssh.bb           |   22 ++++++++++++++++++
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |    5 ++++
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-extended/images/poky-image-basic.bb   |    4 ++-
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    4 ++-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    4 ++-
 meta/recipes-extended/images/poky-image-lsb.bb     |    4 ++-
 meta/recipes-extended/tasks/task-poky-basic.bb     |    4 +--
 .../gstreamer/gst-plugins-good_0.10.26.bb          |    4 +-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    2 +-
 meta/recipes-sato/tasks/task-poky.bb               |    3 +-
 17 files changed, 82 insertions(+), 38 deletions(-)
 create mode 100644 meta/recipes-core/tasks/task-poky-ssh.bb


