Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E53504C80039
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 15:33:25 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Dec 2010 13:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,295,1288594800"; d="scan'208";a="356830053"
Received: from unknown (HELO [10.255.13.235]) ([10.255.13.235])
	by azsmga001.ch.intel.com with ESMTP; 03 Dec 2010 13:33:23 -0800
Message-ID: <4CF96221.5020106@intel.com>
Date: Fri, 03 Dec 2010 13:33:21 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	"Purdie, Richard" <richard.purdie@intel.com>
Subject: [PULL] Updated Consolidated Pull 12/3/10
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
X-List-Received-Date: Fri, 03 Dec 2010 21:33:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


This request contains more checksum updates along with some recipe updates.


Sau!

Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Dongxiao Xu (19):
   run-postinsts: update LIC_FILES_CHKSUM info
   task-poky: update LIC_FILES_CHKSUM info
   task-poky-lsb: update LIC_FILES_CHKSUM info
   task-poky-sdk: update LIC_FILES_CHKSUM info
   formfactor: update LIC_FILES_CHKSUM info
   task-poky-x11-sato: update LIC_FILES_CHKSUM info
   task-base: update LIC_FILES_CHKSUM info
   task-poky-tools: update LIC_FILES_CHKSUM info
   task-poky-standalone-gmae-sdk-target: update LIC_FILES_CHKSUM info
   task-poky-sdk-gmae: update LIC_FILES_CHKSUM info
   task-poky-basic: update LIC_FILES_CHKSUM info
   telepathy-glib: update LIC_FILES_CHKSUM info
   task-poky-apps-x11-pimlico: update LIC_FILES_CHKSUM info
   task-poky-standalone-sdk-target: update LIC_FILES_CHKSUM info
   task-poky-qt: update LIC_FILES_CHKSUM info
   ppp-dialin: update LIC_FILES_CHKSUM info
   task-poky-nfs: update LIC_FILES_CHKSUM info
   task-poky-boot: update LIC_FILES_CHKSUM info
   bluez-hcidump: update LICENSE and LIC_FILES_CHKSUM info

Mei Lei (7):
   initscripts:Add a patch of GPLv2 license and its checksum to bb file
   initramfs-live-install:Add license checksum to bb file
   initramfs-boot:Add license checksum to bb file
   initramfs-live-boot:Add license checksum to bb file
   fstests:Add license checksum and update the GPL information
   keymaps:Add license checksum and update the GPL information
   modutils-initscripts:Add license checksum to bb file

Nitin A Kamble (7):
   m4: upgrade from 1.4.13 to 1.4.15
   makedepend: upgrade from 1.0.2 to 1.0.3
   git: upgrade from 1.7.2.1 to 1.7.3.2
   tcl: upgrade from 8.5.8 to 8.5.9
   distro_tracking_fields: update fields for devel/toolchain recipes
   subversion: upgrade from 1.5.5 to 1.6.13
   distro_tracking_fields: update fields for devel/toolchain recipes

Saul Wold (1):
   preferred-xorg-versions: Update to match new versions

Scott Garman (3):
   insserv: upgrade to version 1.14.0
   libatomics-ops: recipe updates, fix build for mips
   distro_tracking_fields.inc: update insserv and libatomics-ops

Zhai Edwin (13):
   pointercal: Add license checksum
   tidy: Add license checksum
   acpid: update to 1.0.10
   consolekit: Update to 0.4.3
   ethtool: Update to 2.6.36
   puzzles: Update to svn r9023
   x11perf: Update to 1.5.2
   x11vnc: Update to 0.9.12
   web: Update to svn r129
   gnome-desktop: Update to 2.32.1
   gnome-icon-theme: Update to 2.31.0
   gtk-engines: Update to 2.20.2
   eee-acpi-scripts: Update to 1.1.11

  .../conf/distro/include/distro_tracking_fields.inc |   62 ++--
  .../conf/distro/include/poky-default-revisions.inc |    4 +-
  .../distro/include/preferred-xorg-versions.inc     |    6 +-
  meta/recipes-bsp/acpid/acpid.inc                   |    7 +-
  meta/recipes-bsp/acpid/acpid_1.0.10.bb             |    6 +
  meta/recipes-bsp/acpid/acpid_1.0.6.bb              |    3 -
  .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |   15 +-
  .../eee-acpi-scripts/files/remove-doc-check.patch  |   76 ++---
  meta/recipes-bsp/formfactor/formfactor_0.0.bb      |    2 +
  meta/recipes-bsp/keymaps/files/GPLv2.patch         |  345 
++++++++++++++++++++
  meta/recipes-bsp/keymaps/keymaps_1.0.bb            |    6 +-
  meta/recipes-bsp/pointercal/files/COPYING          |    2 +
  meta/recipes-bsp/pointercal/pointercal_0.0.bb      |    5 +-
  .../bluez/bluez-hcidump_1.42.bb                    |    4 +-
  .../ppp-dialin/ppp-dialin_0.1.bb                   |    2 +
  .../telepathy/telepathy-glib_0.13.5.bb             |    2 +-
  .../initrdscripts/initramfs-boot_1.0.bb            |    2 +-
  .../initrdscripts/initramfs-live-boot_1.0.bb       |    2 +-
  .../initrdscripts/initramfs-live-install_1.0.bb    |    2 +-
  .../initscripts/initscripts-1.0/GPLv2.patch        |  345 
++++++++++++++++++++
  meta/recipes-core/initscripts/initscripts_1.0.bb   |    4 +-
  meta/recipes-core/tasks/task-base.bb               |    2 +
  meta/recipes-core/tasks/task-poky-boot.bb          |    2 +
  meta/recipes-core/tasks/task-poky-nfs.bb           |    4 +-
  meta/recipes-core/tasks/task-poky-sdk.bb           |    2 +
  .../tasks/task-poky-standalone-sdk-target.bb       |    2 +
  meta/recipes-core/tasks/task-poky-tools.bb         |    2 +
  meta/recipes-devtools/dpkg/run-postinsts_1.0.bb    |    2 +
  meta/recipes-devtools/git/git_1.7.2.1.bb           |    8 -
  meta/recipes-devtools/git/git_1.7.3.2.bb           |   10 +
  .../insserv/files/40_segfault_virtprov.dpatch      |   89 -----
  .../insserv/files/42_loopnochangemsg.dpatch        |   20 --
  .../insserv/files/crosscompile_fix.patch           |   22 --
  .../insserv/files/disable_runtests.patch           |   18 +
  meta/recipes-devtools/insserv/files/make.patch     |   58 ----
  meta/recipes-devtools/insserv/files/makefile.patch |   70 ++++
  meta/recipes-devtools/insserv/insserv_1.11.0.bb    |   18 -
  meta/recipes-devtools/insserv/insserv_1.14.0.bb    |   24 ++
  .../{m4-native_1.4.13.bb => m4-native_1.4.15.bb}   |    0
  meta/recipes-devtools/m4/m4_1.4.13.bb              |   10 -
  meta/recipes-devtools/m4/m4_1.4.15.bb              |   15 +
  .../subversion-1.5.5/neon-detection.patch          |   36 --
  .../disable-revision-install.patch                 |    0
  .../libtool2.patch                                 |    0
  .../subversion/subversion/neon-detection.patch     |   13 +
  .../{subversion_1.5.5.bb => subversion_1.6.13.bb}  |    7 +-
  .../tcltk/tcl/fix_non_native_build_issue.patch     |   46 ++--
  .../tcltk/tcl/mips-tclstrtod.patch                 |   28 --
  .../tcltk/{tcl_8.5.8.bb => tcl_8.5.9.bb}           |    8 +-
  .../{ethtool_2.6.34.bb => ethtool_2.6.36.bb}       |    0
  meta/recipes-extended/tasks/task-poky-basic.bb     |    2 +
  meta/recipes-extended/tasks/task-poky-lsb.bb       |    2 +
  meta/recipes-gnome/gnome/gnome-desktop.inc         |    2 +-
  .../gnome/gnome-desktop/no-desktop-docs.patch      |   10 -
  meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb   |    3 -
  meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb   |    4 +
  .../gnome/gnome-icon-theme/iconpath-option.patch   |   79 ++---
  ...-theme_2.22.0.bb => gnome-icon-theme_2.31.0.bb} |   12 +-
  ...gtk-engines_2.14.0.bb => gtk-engines_2.20.2.bb} |   11 +-
  meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb     |    2 +
  .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    2 +
  meta/recipes-graphics/clutter/tidy.inc             |    2 +-
  meta/recipes-graphics/clutter/tidy_git.bb          |    3 +
  meta/recipes-graphics/fstests/fstests_svn.bb       |    3 +-
  meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |   15 +
  meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb       |   11 -
  meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb    |   10 +
  meta/recipes-graphics/xorg-app/x11perf_1.5.bb      |    6 -
  .../recipes-graphics/xorg-util/makedepend_1.0.2.bb |    8 -
  .../recipes-graphics/xorg-util/makedepend_1.0.3.bb |   14 +
  meta/recipes-kernel/modutils/files/PD.patch        |   12 +
  .../modutils/modutils-initscripts.bb               |    4 +-
  .../gentoo/libatomic_ops-1.2-mips.patch            |  125 +++++++
  .../pulseaudio/libatomics-ops_1.2.bb               |   17 +-
  meta/recipes-qt/tasks/task-poky-qt.bb              |    2 +
  .../recipes-sato/puzzles/files/makedist_hack.patch |   17 -
  .../puzzles/{puzzles_r7593.bb => puzzles_r9023.bb} |   14 +-
  .../tasks/task-poky-apps-x11-pimlico.bb            |    2 +
  meta/recipes-sato/tasks/task-poky-x11-sato.bb      |    2 +
  meta/recipes-sato/tasks/task-poky.bb               |    2 +
  meta/recipes-sato/web/web_svn.bb                   |    2 +-
  .../recipes-support/consolekit/consolekit_0.3.0.bb |   16 -
  .../recipes-support/consolekit/consolekit_0.4.3.bb |   21 ++
  .../consolekit/files/nopolkit.patch                |    8 +-
  84 files changed, 1312 insertions(+), 551 deletions(-)
  create mode 100644 meta/recipes-bsp/acpid/acpid_1.0.10.bb
  delete mode 100644 meta/recipes-bsp/acpid/acpid_1.0.6.bb
  create mode 100644 meta/recipes-bsp/keymaps/files/GPLv2.patch
  create mode 100644 meta/recipes-bsp/pointercal/files/COPYING
  create mode 100644 
meta/recipes-core/initscripts/initscripts-1.0/GPLv2.patch
  delete mode 100644 meta/recipes-devtools/git/git_1.7.2.1.bb
  create mode 100644 meta/recipes-devtools/git/git_1.7.3.2.bb
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
  rename meta/recipes-devtools/m4/{m4-native_1.4.13.bb => 
m4-native_1.4.15.bb} (100%)
  delete mode 100644 meta/recipes-devtools/m4/m4_1.4.13.bb
  create mode 100644 meta/recipes-devtools/m4/m4_1.4.15.bb
  delete mode 100644 
meta/recipes-devtools/subversion/subversion-1.5.5/neon-detection.patch
  rename meta/recipes-devtools/subversion/{subversion-1.5.5 => 
subversion}/disable-revision-install.patch (100%)
  rename meta/recipes-devtools/subversion/{subversion-1.5.5 => 
subversion}/libtool2.patch (100%)
  create mode 100644 
meta/recipes-devtools/subversion/subversion/neon-detection.patch
  rename meta/recipes-devtools/subversion/{subversion_1.5.5.bb => 
subversion_1.6.13.bb} (80%)
  delete mode 100644 meta/recipes-devtools/tcltk/tcl/mips-tclstrtod.patch
  rename meta/recipes-devtools/tcltk/{tcl_8.5.8.bb => tcl_8.5.9.bb} (89%)
  rename meta/recipes-extended/ethtool/{ethtool_2.6.34.bb => 
ethtool_2.6.36.bb} (100%)
  delete mode 100644 
meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch
  delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb
  create mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
  rename meta/recipes-gnome/gnome/{gnome-icon-theme_2.22.0.bb => 
gnome-icon-theme_2.31.0.bb} (55%)
  rename meta/recipes-gnome/gtk-engines/{gtk-engines_2.14.0.bb => 
gtk-engines_2.20.2.bb} (85%)
  create mode 100644 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
  delete mode 100644 meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb
  create mode 100644 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
  delete mode 100644 meta/recipes-graphics/xorg-app/x11perf_1.5.bb
  delete mode 100644 meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
  create mode 100644 meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb
  create mode 100644 meta/recipes-kernel/modutils/files/PD.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch
  delete mode 100644 meta/recipes-sato/puzzles/files/makedist_hack.patch
  rename meta/recipes-sato/puzzles/{puzzles_r7593.bb => 
puzzles_r9023.bb} (74%)
  delete mode 100644 meta/recipes-support/consolekit/consolekit_0.3.0.bb
  create mode 100644 meta/recipes-support/consolekit/consolekit_0.4.3.bb


