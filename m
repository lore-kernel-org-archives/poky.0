Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1AAE011AB
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:44:45 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 379422FEF1
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:38 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:06 -0800
Message-Id: <cover.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 379422FEF1.5EB3A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 00/23] denzil pull request 5
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
X-List-Received-Date: Fri, 28 Dec 2012 21:44:45 -0000

This is a pull request for denzil, it includes a number of security
fixes and a few important bugfixes. The poky-based tree has been run
through the autobuilder as follows:

nightly-x86: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86/builds/853

nightly-x86-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-lsb/builds/182

nightly-x86-64: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64/builds/776

nightly-x86-64-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64-lsb/builds/177

nightly-arm: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm/builds/782

nightly-arm-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm-lsb/builds/175

nightly-mips: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips/builds/755

nightly-mips-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips-lsb/builds/182

nightly-ppc: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc/builds/733

nightly-ppc-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc-lsb/builds/185

nightly-non-gpl3: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/412

nightly-multilib: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-multilib/builds/408

nightly-tiny: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/389

build-appliance: Green
http://autobuilder.yoctoproject.org:8010/builders/build-appliance/builds/188

eclipse-plugin: Failed
http://autobuilder.yoctoproject.org:8010/builders/eclipse-plugin/builds/717

This appears to be due to some issue on the autobuilder, it failed to
find the branch I sumbmitted. I've notified Beth so she can look into
this.

crownbay: Green
http://autobuilder.yoctoproject.org:8010/builders/crownbay/builds/251

crownbay-noemgd: Green
http://autobuilder.yoctoproject.org:8010/builders/crownbay-noemgd/builds/252

emenlow: Green
http://autobuilder.yoctoproject.org:8010/builders/emenlow/builds/235

n450: Green
http://autobuilder.yoctoproject.org:8010/builders/n450/builds/239

jasperforest: Green
http://autobuilder.yoctoproject.org:8010/builders/jasperforest/builds/234

sugarbay: Green
http://autobuilder.yoctoproject.org:8010/builders/sugarbay/builds/245

fri2-noemgd: Green
http://autobuilder.yoctoproject.org:8010/builders/fri2-noemgd/builds/247

fri2: Green
http://autobuilder.yoctoproject.org:8010/builders/fri2/builds/262

romley: Green
http://autobuilder.yoctoproject.org:8010/builders/romley/builds/209

cedartrail: Green
http://autobuilder.yoctoproject.org:8010/builders/cedartrail/builds/214

sys940x: Failed
http://autobuilder.yoctoproject.org:8010/builders/sys940x/builds/109

Failure during do_rootfs:

| error: Failed dependencies:
| 	libva.so.1 is needed by libegl1-1.10-r0.core2
| 	libva-tpi.so.1 is needed by libegl1-1.10-r0.core2
| 	libva-x11.so.1 is needed by libegl1-1.10-r0.core2

Filed as bug #3659:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3659

sys940x-noemgd: Green
http://autobuilder.yoctoproject.org:8010/builders/sys940x-noemgd/builds/108

cheifriver: Green
http://autobuilder.yoctoproject.org:8010/builders/chiefriver/builds/92

p1022ds: Green
http://autobuilder.yoctoproject.org:8010/builders/p1022ds/builds/185



The following changes since commit ef745cb34fe9ff01456b76c3ff361f3a751cbcb7:

  poky.conf: Add Ubuntu 12.04.1 LTS to SANITY_TESTED_DISTROS (2012-12-07 16:02:04 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-pull5
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull5

Khem Raj (5):
  coreutils: Fix build with eglibc 2.16
  diffutils: Fix build with eglibc 2.16
  gettext,m4,augeas,gnutls: Account for removal of gets in eglibc 2.16
  bison: Fix for gets being removed from eglibc 2.16
  grub,guile,cpio,tar,wget: Fix gnulib for absense of gets in eglibc

Li Wang (1):
  librsvg: CVE-2011-3146

Mihai Lindner (1):
  sysklogd: removed tabs from syslog.conf

Richard Purdie (1):
  boot-directdisk: Fix kernel location after STAGING_KERNEL_DIR change

Scott Garman (6):
  psplash: new patch to fix segfault
  build-appliance-image: Allow SRCREV to be overriden
  gitignore: add generated doc files to ignore list
  libxml2: patch for CVE-2012-2871
  freetype: patches for CVE-2012-5668, 5669, and 5670
  cups: patch for CVE-2011-2896

Scott Rifenbark (7):
  documentation: poky-ref-manual - Fixed grammar typo.
  Documentation: ref-manual - Updated LIC_FILES_CHKSUM example.
  documentation: Updated Manual History table for 1.2.2 release
  poky.ent: Updated to remove "current" and replace with 1.2.2
  documentation: Added February 2013 as release date for 1.3.1
  documentation: Updated manual history tables for Feb 2013
  documentation: Formats. Also, the January 2013 date summary

Tom Zanussi (1):
  yocto-bsp: set branches_base for list_property_values()

yanjun.zhu (1):
  squashfs: fix CVE-2012-4025

 .gitignore                                         |   24 +-
 documentation/adt-manual/adt-manual.xml            |   24 +-
 documentation/bsp-guide/bsp-guide.xml              |   26 +-
 documentation/dev-manual/dev-manual.xml            |   26 +-
 documentation/kernel-manual/kernel-manual.xml      |   25 +-
 documentation/poky-ref-manual/poky-ref-manual.xml  |   27 +-
 documentation/poky-ref-manual/ref-variables.xml    |    2 +-
 .../poky-ref-manual/technical-details.xml          |    2 +-
 documentation/poky.ent                             |    8 +-
 meta/classes/boot-directdisk.bbclass               |    2 +-
 meta/recipes-bsp/grub/grub-1.99/remove-gets.patch  |   20 +
 meta/recipes-bsp/grub/grub_1.99.bb                 |    3 +-
 .../coreutils/coreutils-8.14/remove-gets.patch     |   23 +
 meta/recipes-core/coreutils/coreutils_8.14.bb      |    3 +-
 .../gettext/gettext-0.18.1.1/remove_gets.patch     |   58 ++
 meta/recipes-core/gettext/gettext_0.18.1.1.bb      |    3 +-
 meta/recipes-core/images/build-appliance-image.bb  |    2 +-
 .../libxml/libxml2/libxml2-CVE-2012-2871.patch     |   36 +
 meta/recipes-core/libxml/libxml2_2.8.0.bb          |    4 +-
 .../files/psplash_fix_bad_arg_segfault.patch       |   22 +
 meta/recipes-core/psplash/psplash_git.bb           |    3 +-
 .../recipes-devtools/bison/bison/remove-gets.patch |   20 +
 meta/recipes-devtools/bison/bison_2.5.bb           |    6 +-
 .../recipes-devtools/guile/files/remove-gets.patch |   25 +
 meta/recipes-devtools/guile/guile_2.0.3.bb         |    3 +-
 meta/recipes-devtools/m4/m4-1.4.16.inc             |    6 +-
 meta/recipes-devtools/m4/m4/remove-gets.patch      |   21 +
 .../patches/squashfs-4.2-fix-CVE-2012-4025.patch   |  190 ++++
 ...dd-a-commment-and-fix-some-other-comments.patch |   38 +
 .../patches/squashfs-fix-open-file-limit.patch     |  215 ++++
 .../squashfs-tools/squashfs-tools_4.2.bb           |    5 +-
 .../augeas/augeas/remove-gets.patch                |   20 +
 meta/recipes-extended/augeas/augeas_0.10.0.bb      |    4 +-
 .../cpio/cpio-2.11/remove-gets.patch               |   20 +
 meta/recipes-extended/cpio/cpio_2.11.bb            |    5 +-
 .../cups/cups-1.4.6/cups-CVE-2011-2896.patch       |  140 +++
 meta/recipes-extended/cups/cups_1.4.6.bb           |    3 +-
 .../diffutils/diffutils-3.2/remove-gets.patch      |   22 +
 meta/recipes-extended/diffutils/diffutils_3.2.bb   |    6 +-
 meta/recipes-extended/sysklogd/files/syslog.conf   |   23 +-
 meta/recipes-extended/sysklogd/sysklogd_1.5.bb     |    2 +-
 .../tar/tar-1.26/remove-gets.patch                 |   20 +
 meta/recipes-extended/tar/tar_1.26.bb              |    5 +-
 .../wget/wget-1.13.4/remove-gets.patch             |   23 +
 meta/recipes-extended/wget/wget_1.13.4.bb          |    3 +-
 .../librsvg-2.32.1/librsvg-CVE-2011-3146.patch     | 1088 ++++++++++++++++++++
 meta/recipes-gnome/librsvg/librsvg_2.32.1.bb       |    6 +-
 .../freetype/freetype-2.4.9/CVE-2012-5668.patch    |   31 +
 .../freetype/freetype-2.4.9/CVE-2012-5669.patch    |   31 +
 .../freetype/freetype-2.4.9/CVE-2012-5670.patch    |   29 +
 meta/recipes-graphics/freetype/freetype_2.4.9.bb   |    7 +-
 .../gnutls/gnutls/remove-gets.patch                |   42 +
 meta/recipes-support/gnutls/gnutls_2.12.17.bb      |    3 +-
 scripts/lib/bsp/engine.py                          |    4 +
 54 files changed, 2313 insertions(+), 96 deletions(-)
 create mode 100644 meta/recipes-bsp/grub/grub-1.99/remove-gets.patch
 create mode 100644 meta/recipes-core/coreutils/coreutils-8.14/remove-gets.patch
 create mode 100644 meta/recipes-core/gettext/gettext-0.18.1.1/remove_gets.patch
 create mode 100644 meta/recipes-core/libxml/libxml2/libxml2-CVE-2012-2871.patch
 create mode 100644 meta/recipes-core/psplash/files/psplash_fix_bad_arg_segfault.patch
 create mode 100644 meta/recipes-devtools/bison/bison/remove-gets.patch
 create mode 100644 meta/recipes-devtools/guile/files/remove-gets.patch
 create mode 100644 meta/recipes-devtools/m4/m4/remove-gets.patch
 create mode 100644 meta/recipes-devtools/squashfs-tools/patches/squashfs-4.2-fix-CVE-2012-4025.patch
 create mode 100644 meta/recipes-devtools/squashfs-tools/patches/squashfs-add-a-commment-and-fix-some-other-comments.patch
 create mode 100644 meta/recipes-devtools/squashfs-tools/patches/squashfs-fix-open-file-limit.patch
 create mode 100644 meta/recipes-extended/augeas/augeas/remove-gets.patch
 create mode 100644 meta/recipes-extended/cpio/cpio-2.11/remove-gets.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/cups-CVE-2011-2896.patch
 create mode 100644 meta/recipes-extended/diffutils/diffutils-3.2/remove-gets.patch
 create mode 100644 meta/recipes-extended/tar/tar-1.26/remove-gets.patch
 create mode 100644 meta/recipes-extended/wget/wget-1.13.4/remove-gets.patch
 create mode 100644 meta/recipes-gnome/librsvg/librsvg-2.32.1/librsvg-CVE-2011-3146.patch
 create mode 100644 meta/recipes-graphics/freetype/freetype-2.4.9/CVE-2012-5668.patch
 create mode 100644 meta/recipes-graphics/freetype/freetype-2.4.9/CVE-2012-5669.patch
 create mode 100644 meta/recipes-graphics/freetype/freetype-2.4.9/CVE-2012-5670.patch
 create mode 100644 meta/recipes-support/gnutls/gnutls/remove-gets.patch

-- 
1.7.9.5


