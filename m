Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 967BF4C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 15:55:38 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 3F2A5304F8
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 16:55:27 -0500 (EST)
Message-Id: <cover.1291326732.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Thu, 2 Dec 2010 13:52:12 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 3F2A5304F8.32C0B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/3] Update insserv and libatomics-ops
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
X-List-Received-Date: Thu, 02 Dec 2010 21:55:38 -0000

Hi Saul,

This pull request includes updates to two recipes: insserv and libatomics-ops. innsserv was upgraded to the latest release, and libatomics-ops is still at the latest version, but I added missing distro fields and fixed a build issue on mips architectures. 

These recipes have passed build tests for all of our qemu machine types.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/recipe-upgrades2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/recipe-upgrades2

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (3):
  insserv: upgrade to version 1.14.0
  libatomics-ops: recipe updates, fix build for mips
  distro_tracking_fields.inc: update insserv and libatomics-ops

 .../conf/distro/include/distro_tracking_fields.inc |   19 ++-
 .../insserv/files/40_segfault_virtprov.dpatch      |   89 --------------
 .../insserv/files/42_loopnochangemsg.dpatch        |   20 ---
 .../insserv/files/crosscompile_fix.patch           |   22 ----
 .../insserv/files/disable_runtests.patch           |   18 +++
 meta/recipes-devtools/insserv/files/make.patch     |   58 ---------
 meta/recipes-devtools/insserv/files/makefile.patch |   70 +++++++++++
 meta/recipes-devtools/insserv/insserv_1.11.0.bb    |   18 ---
 meta/recipes-devtools/insserv/insserv_1.14.0.bb    |   24 ++++
 .../gentoo/libatomic_ops-1.2-mips.patch            |  125 ++++++++++++++++++++
 .../pulseaudio/libatomics-ops_1.2.bb               |   17 ++-
 11 files changed, 263 insertions(+), 217 deletions(-)
 delete mode 100644 meta/recipes-devtools/insserv/files/40_segfault_virtprov.dpatch
 delete mode 100644 meta/recipes-devtools/insserv/files/42_loopnochangemsg.dpatch
 delete mode 100644 meta/recipes-devtools/insserv/files/crosscompile_fix.patch
 create mode 100644 meta/recipes-devtools/insserv/files/disable_runtests.patch
 delete mode 100644 meta/recipes-devtools/insserv/files/make.patch
 create mode 100644 meta/recipes-devtools/insserv/files/makefile.patch
 delete mode 100644 meta/recipes-devtools/insserv/insserv_1.11.0.bb
 create mode 100644 meta/recipes-devtools/insserv/insserv_1.14.0.bb
 create mode 100644 meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch


