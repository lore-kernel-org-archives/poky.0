Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D3C4E003C8
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:34 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 519F830426
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:27 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:26 -0700
Message-Id: <cover.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 519F830426.1D302
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 00/57] denzil pull request1
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:34 -0000

Hello,

This is my first pull request for denzil since the 1.2.1 release was made.

It has been run through the autobuilder, which is having some issues with
running sanity tests and buildhistory, so if the build succeeded for
everything except for those steps, I note it as "Green with known AB
issues" below.

Autobuilder Test Report: sgarman/denzil-next-pull1

eclipse-plugin: Green
http://autobuilder.yoctoproject.org:8010/builders/eclipse-plugin/builds/491

nightly-x86: Green with known AB issues
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86/builds/633

nightly-x86-64: Green with known AB issues
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64/builds/572

nightly-arm: Red: see below
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm/builds/571
connman-gnome do_configure failed
	configure: error: dbus-glib > = 0.73 is required

nightly-mips: Green with known AB issues
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips

nightly-ppc: Green with known AB issues
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc/builds/527

nightly-world: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-world/builds/221

nightly-non-gpl3: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/204

nightly-multilib: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-multilib/builds/205

nightly-tiny: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/185

Scott

The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:

  documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-pull1
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull1

Enrico Scholz (1):
  libtool: fixed parallel build related race

Khem Raj (1):
  xserver-xorg: Fix build on powerpc

Martin Donnelly (1):
  augeas: Add libxml2 dependency

Matthew McClintock (13):
  bitbake/fetch2: remove references to ChecksumError class
  libxml-parser-perl_2.41.bb: fix MakeMaker issues with using wrong
    CC/LD/etc
  qemu-0.15.1: add patch to fix compilatation problems on powerpc
  packagedata.py: Fix get_subpkgedata_fn for multilib
  dtc.inc: fix for libdir == /usr/lib64
  openjade-native_1.3.2.bb: fix typo and change the deps exclusion to
    correct var
  gcc-configure-common.inc: use --with-long-double-128 on powerpc to
    comply with ABI
  gcc: gcc-cross-canadian: use correct location for libraries for
    powerpc64
  libgomp: add libgomp (openmp) library, and build for powerpc targets
    by default
  sysvinit-inittab_2.88dsf.bb: Allow multiple serial port consoles to
    be defined
  gcc-package-runtime.inc: Fix QA warning
  task-core-tools-testapps.bb: kexec-tools does not work on e5500-64b
    parts
  u-boot.inc: update linker arguments to pass --sysroot arg

Nitin A Kamble (1):
  tcl: fix target recipe build issue on older distros

Otavio Salvador (2):
  shadow-native: use 'users' group by default
  shadow: use 'users' group by default

Paul Eggleton (5):
  classes/rootfs_*: fix splitting package dependency strings
  buildhistory_analysis: fix error when version specifier missing
  scripts/buildhistory-diff: add GitPython version check
  classes/license: fix manifest to work with deb
  cooker: fix UnboundLocalError when exception occurs during parsing

Richard Purdie (9):
  bitbake: fetch2/__init__: Make it clearer when uri_replace doesn't
    return a match
  bitbake: fetch2: Fix error handling in uri_replace()
  bitbake: fetch2: Only cache data if fn is set, its pointless caching
    it against a None value
  bitbake: fetch2: Ensure when downloading we are consistently in the
    same directory
  bitbake: fetch2: Split try_mirrors into two parts
  bitbake: fetch2: Explicitly check for mirror tarballs in mirror
    handling code
  bitbake: fetch2: Improve mirror looping to consider more cases
  bitbake: fetch2: Handle errors orruring when building mirror urls
  utils.bbclass: add helper function to add all multilib variants of a
    specific package

Saul Wold (4):
  xinetd: Update to 2.3.15
  curl: enable ssl support
  curl: Use gnutls for target and openssl for native
  foomatic: fix perl path for target

Scott Garman (1):
  kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.

Ting Liu (2):
  lsof: define linux C library type when using eglibc
  image_types.bbclass: redefine EXTRA_IMAGECMD_jffs2 to leverage
    siteinfo

Tom Zanussi (14):
  yocto-bsp: add new strip_base() function
  yocto-bsp: strip '/base' from kernel branches in templates
  yocto-bsp: update default branch names
  yocto-bsp: allow branch display filtering
  yocto-bsp: use branches_base
  yocto-bsp: add standard branch mapping
  yocto-bsp: use standard branch mapping in bsp templates
  yocto-bsp: use rstrip() for assignment lines
  yocto-bsp: remove 'branch' statements in .scc if reusing branch
  yocto-bsp: add some standard policy
  yocto-bsp: add i586 option for i386
  yocto-bsp: use emgd 1.10 for i386 template
  yocto-bsp: generate default properties even if json specified
  yocto-bsp: use base branches for qemu 'newbranch' case

Zhenhua Luo (3):
  linux-dtb: add multi-dtb build support
  valgrind: fix default.supp missing issue
  task-core-sdk.bb: add libgomp and libgomp-dev by RECOMMENDS

 bitbake/lib/bb/cooker.py                           |    2 +
 bitbake/lib/bb/fetch2/__init__.py                  |  158 ++++++++++++--------
 meta/classes/image_types.bbclass                   |    7 +-
 meta/classes/kernel.bbclass                        |    5 +
 meta/classes/license.bbclass                       |    2 +-
 meta/classes/rootfs_deb.bbclass                    |    4 +-
 meta/classes/rootfs_ipk.bbclass                    |    4 +-
 meta/classes/utils.bbclass                         |    9 ++
 meta/lib/oe/buildhistory_analysis.py               |    2 +-
 meta/lib/oe/packagedata.py                         |    8 +
 meta/recipes-bsp/u-boot/u-boot.inc                 |    2 +-
 meta/recipes-bsp/u-boot/u-boot_2011.03.bb          |    2 +-
 meta/recipes-bsp/u-boot/u-boot_2011.06.bb          |    2 +-
 .../sysvinit/sysvinit-inittab_2.88dsf.bb           |   22 ++-
 meta/recipes-core/tasks/task-core-sdk.bb           |    6 +-
 .../recipes-core/tasks/task-core-tools-testapps.bb |    1 +
 meta/recipes-devtools/gcc/gcc-4.6.inc              |    2 +-
 meta/recipes-devtools/gcc/gcc-configure-common.inc |    4 +
 .../recipes-devtools/gcc/gcc-configure-runtime.inc |    7 +
 .../recipes-devtools/gcc/gcc-cross-canadian_4.6.bb |    4 +-
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |   13 ++
 meta/recipes-devtools/libtool/libtool-2.4.2.inc    |    3 +-
 .../openjade/openjade-native_1.3.2.bb              |    2 +-
 .../perl/libxml-parser-perl_2.41.bb                |   11 +-
 .../qemu-0.15.1/0001-ppc64-Fix-linker-script.patch |   46 ++++++
 meta/recipes-devtools/qemu/qemu_0.15.1.bb          |    3 +-
 .../tcl/fix_issue_with_old_distro_glibc.patch      |  109 ++++++++++++++
 meta/recipes-devtools/tcltk/tcl_8.5.11.bb          |    5 +-
 meta/recipes-devtools/valgrind/valgrind_3.7.0.bb   |    6 +-
 meta/recipes-extended/augeas/augeas.inc            |    2 +-
 .../foomatic/foomatic-filters_4.0.7.bb             |    3 +-
 meta/recipes-extended/lsof/lsof_4.85.bb            |    7 +-
 .../shadow/shadow-native_4.1.4.3.bb                |    5 +-
 meta/recipes-extended/shadow/shadow_4.1.4.3.bb     |    5 +-
 .../xinetd/{xinetd_2.3.14.bb => xinetd_2.3.15.bb}  |    6 +-
 .../xorg-xserver/xserver-xorg-1.11.2.inc           |    9 +-
 .../xserver-xorg-1.11.2/gcc-47-warning.patch       |   33 ++++
 meta/recipes-kernel/dtc/dtc.inc                    |    4 +-
 meta/recipes-kernel/linux/linux-dtb.inc            |   36 ++++-
 meta/recipes-support/curl/curl_7.24.0.bb           |   11 +-
 scripts/buildhistory-diff                          |    8 +-
 scripts/lib/bsp/engine.py                          |   44 +++++-
 scripts/lib/bsp/kernel.py                          |   18 +++
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 +-
 .../arch/i386/conf/machine/{{=machine}}.conf       |   14 +-
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +
 .../linux/files/{{=machine}}-standard.scc          |   14 +-
 .../recipes-kernel/linux/files/{{=machine}}.scc    |    2 +-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 +-
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 +-
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 +-
 .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +-
 .../linux/files/{{=machine}}-standard.scc          |    9 +-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   24 +--
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   24 +--
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   24 +--
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   24 +--
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +
 .../linux/files/{{=machine}}-standard.scc          |   10 +-
 ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 +-
 ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 +-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 +-
 78 files changed, 708 insertions(+), 261 deletions(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.15.1/0001-ppc64-Fix-linker-script.patch
 create mode 100644 meta/recipes-devtools/tcltk/tcl/fix_issue_with_old_distro_glibc.patch
 rename meta/recipes-extended/xinetd/{xinetd_2.3.14.bb => xinetd_2.3.15.bb} (90%)
 create mode 100644 meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2/gcc-47-warning.patch

-- 
1.7.9.5


