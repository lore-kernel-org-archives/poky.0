Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFD45E014F2
	for <poky@yoctoproject.org>; Thu, 24 Jan 2013 12:57:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2013 12:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="276279261"
Received: from unknown (HELO localhost) ([10.255.14.235])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2013 12:57:09 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org, brian.lloyd@familyhonor.net, ross.burton@intel.com
Date: Thu, 24 Jan 2013 14:57:07 -0600
Message-Id: <cover.1359060711.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1][danny] yocto-bsp fix
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
X-List-Received-Date: Thu, 24 Jan 2013 20:57:10 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

This patch comes from Brian A. LLoyd and fixes a problem he found in
yocto-bsp:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3731

I added a couple additional tweaks, which are detailed in the commit.

The following changes since commit 47b0864fbd65746558d8186450c182d98bac78ca:

  tools: Updated sed file to process links in mega-manual (2013-01-07 14:43:31 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-user-fixes-danny
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-user-fixes-danny

Brian A. Lloyd (1):
  yocto-bsp: qualify user files with machine name

 scripts/lib/bsp/kernel.py                          | 28 +++++++++++-----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |  2 +-
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 ...er-config.cfg =>  {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  2 +-
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  4 +++-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  4 +++-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 42 files changed, 91 insertions(+), 87 deletions(-)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{user-config.cfg =>  {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)

-- 
1.7.11.4


