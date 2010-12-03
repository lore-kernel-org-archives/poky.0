Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88FF04C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:31:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 21:31:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="356478167"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 21:31:44 -0800
Message-Id: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 3 Dec 2010 13:35:52 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/14] X apps and base utils upgrade, Edwin, Dec3 2010
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
X-List-Received-Date: Fri, 03 Dec 2010 05:31:45 -0000

Saul,
This is 2nd version of last pull request with some extra info of patch handling.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro04
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro04

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (14):
  pointercal: Add license checksum
  tidy: Add license checksum
  beecrypt: Update to 4.2.1
  acpid: update to 1.0.10
  consolekit: Update to 0.4.3
  eee-acpi-scripts: Update to 1.1.11
  ethtool: Update to 2.6.36
  puzzles: Update to svn r9023
  x11perf: Update to 1.5.2
  x11vnc: Update to 0.9.12
  web: Update to svn r129
  gnome-desktop: Update to 2.32.1
  gnome-icon-theme: Update to 2.31.0
  gtk-engines: Update to 2.20.2

 .../conf/distro/include/poky-default-revisions.inc |    4 +-
 meta/recipes-bsp/acpid/acpid.inc                   |    7 +-
 meta/recipes-bsp/acpid/acpid_1.0.10.bb             |    6 ++
 meta/recipes-bsp/acpid/acpid_1.0.6.bb              |    3 -
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |   15 ++--
 .../eee-acpi-scripts/files/remove-doc-check.patch  |   76 +++++++++----------
 meta/recipes-bsp/pointercal/files/COPYING          |    2 +
 meta/recipes-bsp/pointercal/pointercal_0.0.bb      |    5 +-
 .../{ethtool_2.6.34.bb => ethtool_2.6.36.bb}       |    0
 meta/recipes-gnome/gnome/gnome-desktop.inc         |    2 +-
 .../gnome/gnome-desktop/no-desktop-docs.patch      |   10 ---
 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb   |    3 -
 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb   |    4 +
 .../gnome/gnome-icon-theme/iconpath-option.patch   |   79 +++++++++----------
 ...-theme_2.22.0.bb => gnome-icon-theme_2.31.0.bb} |   12 ++-
 ...gtk-engines_2.14.0.bb => gtk-engines_2.20.2.bb} |   11 ++-
 meta/recipes-graphics/clutter/tidy.inc             |    2 +-
 meta/recipes-graphics/clutter/tidy_git.bb          |    3 +
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |   15 ++++
 meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb       |   11 ---
 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb    |   10 +++
 meta/recipes-graphics/xorg-app/x11perf_1.5.bb      |    6 --
 .../recipes-sato/puzzles/files/makedist_hack.patch |   17 ----
 .../puzzles/{puzzles_r7593.bb => puzzles_r9023.bb} |   14 ++--
 meta/recipes-sato/web/web_svn.bb                   |    2 +-
 .../beecrypt/beecrypt/disable-icu-check.patch      |   12 ++--
 .../beecrypt/beecrypt/fix-security.patch           |   51 +++++++------
 .../recipes-support/beecrypt/beecrypt/x64fix.patch |   23 ------
 .../{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb}       |    9 +-
 .../recipes-support/consolekit/consolekit_0.3.0.bb |   16 ----
 .../consolekit/files/nopolkit.patch                |    8 +-
 meta/recipes-tbd/consolekit/consolekit_0.4.3.bb    |   21 +++++
 32 files changed, 224 insertions(+), 235 deletions(-)
 create mode 100644 meta/recipes-bsp/acpid/acpid_1.0.10.bb
 delete mode 100644 meta/recipes-bsp/acpid/acpid_1.0.6.bb
 create mode 100644 meta/recipes-bsp/pointercal/files/COPYING
 rename meta/recipes-extended/ethtool/{ethtool_2.6.34.bb => ethtool_2.6.36.bb} (100%)
 delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch
 delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb
 create mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
 rename meta/recipes-gnome/gnome/{gnome-icon-theme_2.22.0.bb => gnome-icon-theme_2.31.0.bb} (55%)
 rename meta/recipes-gnome/gtk-engines/{gtk-engines_2.14.0.bb => gtk-engines_2.20.2.bb} (85%)
 create mode 100644 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
 delete mode 100644 meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb
 create mode 100644 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
 delete mode 100644 meta/recipes-graphics/xorg-app/x11perf_1.5.bb
 delete mode 100644 meta/recipes-sato/puzzles/files/makedist_hack.patch
 rename meta/recipes-sato/puzzles/{puzzles_r7593.bb => puzzles_r9023.bb} (74%)
 delete mode 100644 meta/recipes-support/beecrypt/beecrypt/x64fix.patch
 rename meta/recipes-support/beecrypt/{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb} (65%)
 delete mode 100644 meta/recipes-support/consolekit/consolekit_0.3.0.bb
 create mode 100644 meta/recipes-tbd/consolekit/consolekit_0.4.3.bb


