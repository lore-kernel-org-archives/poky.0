Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6BED4C80039
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 01:51:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 23:51:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="356517283"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 23:51:10 -0800
Message-ID: <4CF8A16E.6050702@intel.com>
Date: Thu, 02 Dec 2010 23:51:10 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	"Purdie, Richard" <richard.purdie@intel.com>
Subject: [PULL] Consolidated Pull Request
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
X-List-Received-Date: Fri, 03 Dec 2010 07:51:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

Here is another pull request, this is an attempt to stabilize master, 
there where a number of bad patches that I let in due to poor testing, I 
know you are not wild about reverts, but there here until we can get 
some proper fixes in place.

Some of those fixes may come in overnight from the rest of the distro 
team, but I am trying to get master stable so that we can move forward 
again with regular testing.

So far distro/testing is showing green (other than a random problem in
arm minimal which seems to resolve itself).  I tried a basic world build 
againt x86 and there are a couple of clutter issues (but we knew they 
would be there).

Sau!




Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Adrian Alonso (1):
   librsvg: fix gdk-pixbuf-query-loaders not found in path

Gary Thomas (1):
   Add missing config file - allows builds on PowerPC

Mei Lei (8):
   initscripts:Add a patch of GPLv2 license and its checksum to bb file
   initramfs-live-install:Add license checksum to bb file
   initramfs-boot:Add license checksum to bb file
   initramfs-live-boot:Add license checksum to bb file
   fstests:Add license checksum and update the GPL information
   eee-acpi-scripts:Add license checksum and update the GPL information
   keymaps:Add license checksum and update the GPL information
   modutils-initscripts:Add license checksum to bb file

Saul Wold (4):
   Revert "qemugl: upgrade to git commit
     33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9"
   Revert "gssdp: Disable gobject introspection explicitly"
   Revert "gssdp: Upgrade to version 0.9.0"
   Revert "libnl: upgrade to version 2.0"

Scott Garman (3):
   insserv: upgrade to version 1.14.0
   libatomics-ops: recipe updates, fix build for mips
   distro_tracking_fields.inc: update insserv and libatomics-ops

  .../conf/distro/include/distro_tracking_fields.inc |   19 +-
  .../conf/distro/include/poky-default-revisions.inc |    4 +-
  .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    4 +-
  meta/recipes-bsp/keymaps/files/GPLv2.patch         |  345 
++++++++++++++++++++
  meta/recipes-bsp/keymaps/keymaps_1.0.bb            |    6 +-
  .../gupnp/{gssdp_0.9.0.bb => gssdp_0.7.1.bb}       |    5 -
  .../initrdscripts/initramfs-boot_1.0.bb            |    2 +-
  .../initrdscripts/initramfs-live-boot_1.0.bb       |    2 +-
  .../initrdscripts/initramfs-live-install_1.0.bb    |    2 +-
  .../initscripts/initscripts-1.0/GPLv2.patch        |  345 
++++++++++++++++++++
  meta/recipes-core/initscripts/initscripts_1.0.bb   |    4 +-
  .../insserv/files/40_segfault_virtprov.dpatch      |   89 -----
  .../insserv/files/42_loopnochangemsg.dpatch        |   20 --
  .../insserv/files/crosscompile_fix.patch           |   22 --
  .../insserv/files/disable_runtests.patch           |   18 +
  meta/recipes-devtools/insserv/files/make.patch     |   58 ----
  meta/recipes-devtools/insserv/files/makefile.patch |   70 ++++
  meta/recipes-devtools/insserv/insserv_1.11.0.bb    |   18 -
  meta/recipes-devtools/insserv/insserv_1.14.0.bb    |   24 ++
  .../gnome/libart-lgpl/powerpc/art_config.h         |   10 +
  meta/recipes-gnome/librsvg/librsvg_2.32.0.bb       |    3 +-
  meta/recipes-graphics/fstests/fstests_svn.bb       |    3 +-
  meta/recipes-kernel/modutils/files/PD.patch        |   12 +
  .../modutils/modutils-initscripts.bb               |    4 +-
  .../gentoo/libatomic_ops-1.2-mips.patch            |  125 +++++++
  .../pulseaudio/libatomics-ops_1.2.bb               |   17 +-
  meta/recipes-support/libnl/libnl/compilefix.patch  |   12 +
  .../libnl/libnl/local-includes.patch               |   11 +
  .../libnl/{libnl_2.0.bb => libnl_1.1.bb}           |   11 +-
  29 files changed, 1025 insertions(+), 240 deletions(-)
  create mode 100644 meta/recipes-bsp/keymaps/files/GPLv2.patch
  rename meta/recipes-connectivity/gupnp/{gssdp_0.9.0.bb => 
gssdp_0.7.1.bb} (73%)
  create mode 100644 
meta/recipes-core/initscripts/initscripts-1.0/GPLv2.patch
  delete mode 100644 
meta/recipes-devtools/insserv/files/40_segfault_virtprov.dpatch
  delete mode 100644 
meta/recipes-devtools/insserv/files/42_loopnochangemsg.dpatch
  delete mode 100644 
meta/recipes-devtools/insserv/files/crosscompile_fix.patch
  create mode 100644 
meta/recipes-devtools/insserv/files/disable_runtests.patch
  delete mode 100644 meta/recipes-devtools/insserv/files/make.patch
  create mode 100644 meta/recipes-devtools/insserv/files/makefile.patch
  delete mode 100644 meta/recipes-devtools/insserv/insserv_1.11.0.bb
  create mode 100644 meta/recipes-devtools/insserv/insserv_1.14.0.bb
  create mode 100644 
meta/recipes-gnome/gnome/libart-lgpl/powerpc/art_config.h
  create mode 100644 meta/recipes-kernel/modutils/files/PD.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch
  create mode 100644 meta/recipes-support/libnl/libnl/compilefix.patch
  create mode 100644 meta/recipes-support/libnl/libnl/local-includes.patch
  rename meta/recipes-support/libnl/{libnl_2.0.bb => libnl_1.1.bb} (61%)



