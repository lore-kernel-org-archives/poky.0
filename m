Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1E9B4C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:56:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 07:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="711776531"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 07:55:57 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 23 Feb 2011 00:00:53 +0800
Message-Id: <cover.1298390312.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] rootless x support
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
X-List-Received-Date: Tue, 22 Feb 2011 15:56:17 -0000

this patch set add the rootless X support (a.k.a non-root X)

- What is rootless X
Rootless X allow X to be runed with non-root user, to gain better security
Rerence (https://wiki.ubuntu.com/X/Rootless) has more detailed info on this.

- What changes are made to support rootless X
To support rootless X, whole stack including kernle, graphics driver, x server
and userspace setting are all required to change. Fortunately, the former three
already has required changes in upstream, so this patchset only add userspace
setting to enalbe the rootless X.

- How to enable/disable rootless X
Not all machine support rootless X currently, because rootless X requires kernel
mode setting (KMS) in graphics driver and not all graphics driver support KMS,
so a per-machine config "ROOTLESS_X" is introduced to enable/disable rootless X.
so far, ROOTLESS_X is set for atom_pc machine, because its graphics driver(intel
graphics driver) support KMS well.

this patchset has been tested in atom-pc and qemux86 machine poky-image-sato image

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/nonrootx
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/nonrootx

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (2):
  xf86-video-intel: add config option to support rootless X
  xserver-nodm-init: add rootless-x support

 meta/conf/machine/atom-pc.conf                     |    2 +
 .../x11-common/xserver-nodm-init.bb                |   22 +++++++++++++++++++-
 .../x11-common/xserver-nodm-init/Xusername         |    1 +
 .../x11-common/xserver-nodm-init/xserver-nodm      |    4 +++
 .../xorg-driver/xf86-video-intel_2.14.0.bb         |    5 ++++
 5 files changed, 33 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/x11-common/xserver-nodm-init/Xusername


