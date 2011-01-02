Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B02624C80BD8
	for <poky@yoctoproject.org>; Sun,  2 Jan 2011 04:34:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Jan 2011 02:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,263,1291622400"; d="scan'208";a="589120724"
Received: from unknown (HELO [10.255.13.218]) ([10.255.13.218])
	by orsmga002.jf.intel.com with ESMTP; 02 Jan 2011 02:34:22 -0800
Message-ID: <4D2054AD.2070902@linux.intel.com>
Date: Sun, 02 Jan 2011 02:34:21 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	"Purdie, Richard" <richard.purdie@intel.com>
Subject: [PULL]: Consolidated Pull Request
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
X-List-Received-Date: Sun, 02 Jan 2011 10:34:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

Happy New Year!

This pull request has been tested via both distro-testing a number of 
world builds on PPC, MIPS, and x86.

There is still the libc-headers issue (know problem with fetcher), but
otherwise is clean.

Please pull if you are around.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/stage
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Bruce Ashfield (1):
   linux-yocto: update to 2.6.37-rc8

Jiajun Xu (4):
   qemuimagetest: Add basic function check for zypper command
   qemuimagetest: Add basic function check for rpm command
   qemuimagetest: Add basic function check for gcc/g++/make command in
     target
   qemuimagetest: Add basic function check for connman

Kevin Tian (1):
   gcc-4.5.1: make c++ include path relative to "--sysroot"

Qing He (6):
   parted: upgrade to version 2.3
   libtasn1: upgrade to version 2.9
   gnutls: upgrade to version 2.10.4
   augeas: upgrade to version 0.7.4
   ncurses: upgrade to version 5.7
   lzo: upgrade to version 2.04

Saul Wold (4):
   lttng-ust: add COMPATIBLE_HOST to prevent ARM/MIPS world build
   mutter: Add COMPATIBLE_MACHINE list to prevent PPC build
   xserver-kdrive: add DEPENDS for libdrm
   dtc: add patch to remove -Os for PPC

Tom Zanussi (2):
   distro_tracking_fields.inc: add fields for blktrace
   distro_tracking_fields.inc: add fields for sysprof

  .../conf/distro/include/distro_tracking_fields.inc |   24 +
  .../conf/distro/include/poky-default-revisions.inc |   22 +-
  meta/recipes-core/ncurses/ncurses-5.7/config.cache |    4 +
  .../ncurses/ncurses-5.7/tic-hang.patch             |   25 +
  .../ncurses/ncurses/makefile_tweak.patch           |   89 -
  meta/recipes-core/ncurses/ncurses/visibility.patch | 4904 
--------------------
  meta/recipes-core/ncurses/ncurses_5.4.bb           |   11 -
  meta/recipes-core/ncurses/ncurses_5.7.bb           |  242 +
  meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
  .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |   33 +
  meta/recipes-devtools/gcc/gcc-configure-cross.inc  |    2 +-
  meta/recipes-devtools/gcc/gcc-configure-sdk.inc    |    2 +-
  .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
  .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
  .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
  meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
  .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
  .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
  meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
  meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
  meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
  meta/recipes-extended/augeas/augeas_0.7.3.bb       |    6 -
  meta/recipes-extended/augeas/augeas_0.7.4.bb       |    6 +
  .../{parted-1.9.0 => parted-2.3}/no_check.patch    |    0
  .../{parted-1.9.0 => parted-2.3}/syscalls.patch    |    0
  .../parted/{parted_1.9.0.bb => parted_2.3.bb}      |   12 +-
  meta/recipes-graphics/mutter/mutter.inc            |    3 +
  .../xorg-xserver/xserver-kdrive.inc                |    6 +-
  meta/recipes-kernel/dtc/dtc/remove_space_opt.patch |   16 +
  meta/recipes-kernel/dtc/dtc_git.bb                 |    1 +
  meta/recipes-kernel/dtc/dtc_git.inc                |    2 +-
  meta/recipes-kernel/lttng/lttng-ust_0.8.bb         |    7 +
  .../configure-fix.patch                            |    0
  .../gnutls-openssl.patch                           |    0
  .../gnutls-texinfo-euro.patch                      |    0
  .../gnutls/{gnutls_2.8.6.bb => gnutls_2.10.4.bb}   |    4 +-
  .../gnutls/{libtasn1_2.8.bb => libtasn1_2.9.bb}    |    4 +-
  meta/recipes-support/lzo/lzo-2.03/autofoo.patch    |   17 -
  .../lzo/{lzo-2.03 => lzo-2.04}/acinclude.m4        |    0
  meta/recipes-support/lzo/lzo-2.04/autoconf.patch   |   19 +
  .../lzo/{lzo_2.03.bb => lzo_2.04.bb}               |   11 +-
  scripts/qemuimage-tests/sanity/compiler            |   52 +
  scripts/qemuimage-tests/sanity/connman             |   52 +
  scripts/qemuimage-tests/sanity/rpm_query           |   52 +
  scripts/qemuimage-tests/sanity/zypper_help         |   52 +
  scripts/qemuimage-tests/sanity/zypper_search       |   52 +
  .../scenario/qemuarm/poky-image-lsb                |    4 +
  .../scenario/qemuarm/poky-image-sato               |    4 +
  .../scenario/qemuarm/poky-image-sdk                |    5 +
  .../scenario/qemumips/poky-image-lsb               |    4 +
  .../scenario/qemumips/poky-image-sato              |    4 +
  .../scenario/qemumips/poky-image-sdk               |    5 +
  .../scenario/qemuppc/poky-image-lsb                |    4 +
  .../scenario/qemuppc/poky-image-sato               |    4 +
  .../scenario/qemuppc/poky-image-sdk                |    5 +
  .../scenario/qemux86-64/poky-image-lsb             |    4 +
  .../scenario/qemux86-64/poky-image-sato            |    4 +
  .../scenario/qemux86-64/poky-image-sdk             |    5 +
  .../scenario/qemux86/poky-image-lsb                |    4 +
  .../scenario/qemux86/poky-image-sato               |    4 +
  .../scenario/qemux86/poky-image-sdk                |    5 +
  scripts/qemuimage-tests/tools/compiler_test.sh     |  137 +
  scripts/qemuimage-tests/tools/connman_test.sh      |   55 +
  scripts/qemuimage-tests/tools/rpm_test.sh          |   45 +
  scripts/qemuimage-tests/tools/zypper_test.sh       |   45 +
  65 files changed, 1031 insertions(+), 5067 deletions(-)
  create mode 100644 meta/recipes-core/ncurses/ncurses-5.7/config.cache
  create mode 100644 meta/recipes-core/ncurses/ncurses-5.7/tic-hang.patch
  delete mode 100644 meta/recipes-core/ncurses/ncurses/makefile_tweak.patch
  delete mode 100644 meta/recipes-core/ncurses/ncurses/visibility.patch
  delete mode 100644 meta/recipes-core/ncurses/ncurses_5.4.bb
  create mode 100644 meta/recipes-core/ncurses/ncurses_5.7.bb
  create mode 100644 
meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
  delete mode 100644 meta/recipes-extended/augeas/augeas_0.7.3.bb
  create mode 100644 meta/recipes-extended/augeas/augeas_0.7.4.bb
  rename meta/recipes-extended/parted/{parted-1.9.0 => 
parted-2.3}/no_check.patch (100%)
  rename meta/recipes-extended/parted/{parted-1.9.0 => 
parted-2.3}/syscalls.patch (100%)
  rename meta/recipes-extended/parted/{parted_1.9.0.bb => parted_2.3.bb} 
(54%)
  create mode 100644 meta/recipes-kernel/dtc/dtc/remove_space_opt.patch
  rename meta/recipes-support/gnutls/{gnutls-2.8.6 => 
gnutls-2.10.4}/configure-fix.patch (100%)
  rename meta/recipes-support/gnutls/{gnutls-2.8.6 => 
gnutls-2.10.4}/gnutls-openssl.patch (100%)
  rename meta/recipes-support/gnutls/{gnutls-2.8.6 => 
gnutls-2.10.4}/gnutls-texinfo-euro.patch (100%)
  rename meta/recipes-support/gnutls/{gnutls_2.8.6.bb => 
gnutls_2.10.4.bb} (53%)
  rename meta/recipes-support/gnutls/{libtasn1_2.8.bb => 
libtasn1_2.9.bb} (81%)
  delete mode 100644 meta/recipes-support/lzo/lzo-2.03/autofoo.patch
  rename meta/recipes-support/lzo/{lzo-2.03 => lzo-2.04}/acinclude.m4 (100%)
  create mode 100644 meta/recipes-support/lzo/lzo-2.04/autoconf.patch
  rename meta/recipes-support/lzo/{lzo_2.03.bb => lzo_2.04.bb} (59%)
  create mode 100755 scripts/qemuimage-tests/sanity/compiler
  create mode 100755 scripts/qemuimage-tests/sanity/connman
  create mode 100755 scripts/qemuimage-tests/sanity/rpm_query
  create mode 100755 scripts/qemuimage-tests/sanity/zypper_help
  create mode 100755 scripts/qemuimage-tests/sanity/zypper_search
  create mode 100644 scripts/qemuimage-tests/tools/compiler_test.sh
  create mode 100644 scripts/qemuimage-tests/tools/connman_test.sh
  create mode 100644 scripts/qemuimage-tests/tools/rpm_test.sh
  create mode 100644 scripts/qemuimage-tests/tools/zypper_test.sh

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


