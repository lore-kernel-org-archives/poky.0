Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EF3E00300
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960380"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:12 -0700
Message-Id: <cover.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
Subject: [BERNARD 00/17] Bernard stable updates
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

Here's a proposed series of updates for Bernard. The purpose of this series is
to enable Bernard to build on more recent distribution releases. I've tested
thoroughly on Fedora 16.

Where possible I've pulled patches from Edison/master but there are a couple of
new/unique patches.

The only remaining issue I'm seeing is severe host intrusion on target qemu
- I'm sure this isn't new and don't think it's worth fixing for this release.

Regards,
Joshua

The following changes since commit 14c9af0056d9ba63c9a509624cc835cb8ee2b8ad:

  documentation: Makefile corrections to support web server structure (2011-10-14 00:39:51 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib josh/bernard
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/bernard

Anders Darander (1):
  qemu: modify search paths for libgl

Bruce Ashfield (2):
  linux-yocto-stable: update SRC_URI to generic 2.6.34 repo
  linux-yocto-stable: update SRCREVs to v2.6.34.10

Joshua Lock (6):
  scripts/poky-qemu: fix libGL checks for recent Debian(ish) systems
  libpng: backport security fixes
  python: fix CVE-2011-1015
  glib-2.0: explicitly disable dtrace and systemtap for native varaint
  texinfo: several changes to build without zlib and ncurses headers on
    host
  web: switch to git

Khem Raj (1):
  qemu: Poke more paths for presence of libgl

Lin Tong (1):
  valgrind: supporting on Linux kernel 3.x

Martin Jansa (1):
  python: add patch to fix cross compilation on host with linux-3.0

Nitin A Kamble (2):
  matchbox-wm-2: fix typo in Makefile
  zaurusd: fix a typo in Makefile

Qing He (1):
  rpm: fix fprint pointer issue

Richard Purdie (1):
  Remove help2man dependency

jani.uusi-rantala@nokia.com (1):
  Magic file path should be given for rpmbuild

 meta/classes/package_rpm.bbclass                   |    2 +
 .../conf/distro/include/poky-default-revisions.inc |   24 ++--
 .../recipes-bsp/zaurusd/zaurusd/fix_makefile.patch |   19 ++
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    5 +-
 meta/recipes-core/glib-2.0/glib.inc                |    2 +-
 .../python/python/07-linux3-regen-fix.patch        |   18 ++
 .../python/python/fix-cgi-http-server.patch        |  176 ++++++++++++++++++++
 meta/recipes-devtools/python/python_2.6.6.bb       |    4 +-
 meta/recipes-devtools/qemu/qemu.inc                |    1 +
 .../rpm/rpm/fprint-pointer-fix.patch               |   35 ++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    3 +-
 .../valgrind-3.6.0/fix_unsupporting_kernel_3.patch |   26 +++
 meta/recipes-devtools/valgrind/valgrind_3.6.0.bb   |    5 +-
 .../texinfo-4.13a/disable-native-tools.patch       |   43 +++++
 .../texinfo/texinfo-4.13a/link-zip.patch           |   16 ++
 meta/recipes-extended/texinfo/texinfo_4.13a.bb     |   23 ++--
 .../matchbox-wm-2/matchbox-wm-2/fix_makefile.patch |   19 ++
 .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    3 +-
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
 .../libpng/libpng/02-CVE-2011-2501.patch           |   29 ++++
 .../libpng/libpng/03-CVE-2011-2690.patch           |   38 +++++
 .../libpng/libpng/04-CVE-2011-2692.patch           |   29 ++++
 meta/recipes-multimedia/libpng/libpng_1.2.44.bb    |    7 +-
 meta/recipes-sato/web/{web_svn.bb => web_git.bb}   |    7 +-
 scripts/help2man                                   |    3 +
 scripts/poky-qemu                                  |    1 +
 26 files changed, 502 insertions(+), 38 deletions(-)
 create mode 100644 meta/recipes-bsp/zaurusd/zaurusd/fix_makefile.patch
 create mode 100644 meta/recipes-devtools/python/python/07-linux3-regen-fix.patch
 create mode 100644 meta/recipes-devtools/python/python/fix-cgi-http-server.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/fprint-pointer-fix.patch
 create mode 100644 meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_unsupporting_kernel_3.patch
 create mode 100644 meta/recipes-extended/texinfo/texinfo-4.13a/disable-native-tools.patch
 create mode 100644 meta/recipes-extended/texinfo/texinfo-4.13a/link-zip.patch
 create mode 100644 meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2/fix_makefile.patch
 create mode 100644 meta/recipes-multimedia/libpng/libpng/02-CVE-2011-2501.patch
 create mode 100644 meta/recipes-multimedia/libpng/libpng/03-CVE-2011-2690.patch
 create mode 100644 meta/recipes-multimedia/libpng/libpng/04-CVE-2011-2692.patch
 rename meta/recipes-sato/web/{web_svn.bb => web_git.bb} (75%)
 create mode 100755 scripts/help2man

-- 
1.7.7


