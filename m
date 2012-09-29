Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71416E01404
	for <poky@yoctoproject.org>; Sat, 29 Sep 2012 16:45:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Sep 2012 16:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,509,1344236400"; d="scan'208";a="216436699"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by orsmga002.jf.intel.com with ESMTP; 29 Sep 2012 16:45:32 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Sat, 29 Sep 2012 18:45:28 -0500
Message-Id: <cover.1348958103.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/2] yocto-bsp: fix for xserver-xorg-config bbappend FILESPATH
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
X-List-Received-Date: Sat, 29 Sep 2012 23:45:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset fixes Yocto bug Bug 3158 [xserver-xorg-config_0.1.bbappend
bsp FILESPATH not set in a robust manner].

It also removes a few 'test' config options left in a couple of the
machine templates.

The following changes since commit 7c39c87d52c20e47cf90275a16e4517a296c8388:

  documentation: adt-manual, yocto-project-qs - Added tarball installer info (2012-09-28 17:54:28 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-filesextrapaths
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-filesextrapaths

Tom Zanussi (2):
  yocto-bsp: use FILESEXTRAPATHS for xserver-xf86-config bbappends
  yocto-bsp: remove 'test' options from user-config.cfg

 .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
 .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
 .../target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg    | 4 ----
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
 .../target/arch/qemu/recipes-kernel/linux/files/user-config.cfg       | 4 ----
 .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
 6 files changed, 4 insertions(+), 19 deletions(-)

-- 
1.7.11.4


