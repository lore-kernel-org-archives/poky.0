Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A0ADE00738
	for <poky@yoctoproject.org>; Sun, 27 Jan 2013 15:41:38 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 056FE2FD91
	for <poky@yoctoproject.org>; Sun, 27 Jan 2013 18:41:27 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Sun, 27 Jan 2013 15:41:15 -0800
Message-Id: <cover.1359330023.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 056FE2FD91.CBEDC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/7] denzil pull request
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
X-List-Received-Date: Sun, 27 Jan 2013 23:41:38 -0000

Hello,

This is a pull request for denzil. It includes a bitbake fix from
MatthewM (poky-based tree only) and some Fedora 18 build fixes from
Koen.

Build status: 100% Green.

nightly-x86: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86/builds/885

nightly-x86-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-lsb/builds/214

nightly-x86-64: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64/builds/810

nightly-x86-64-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-x86-64-lsb/builds/209

nightly-arm: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm/builds/814

nightly-arm-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-arm-lsb/builds/207

nightly-mips: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips/builds/786

nightly-mips-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-mips-lsb/builds/213

nightly-ppc: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc/builds/765

nightly-ppc-lsb: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-ppc-lsb/builds/217

nightly-non-gpl3: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/443

nightly-multilib: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-multilib/builds/444

nightly-tiny: Green
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/420

build-appliance: Green
http://autobuilder.yoctoproject.org:8010/builders/build-appliance/builds/220

eclipse-plugin: Green
http://autobuilder.yoctoproject.org:8010/builders/eclipse-plugin/builds/763


The following changes since commit 3456295898bf157e40ea1f8c335f0b7285d3d8a7:

  build-appliance-image: Bump SRCREV (2013-01-04 22:23:43 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

Christopher Larson (1):
  bitbake: command: add error to return of runCommand

Martin Jansa (1):
  bison: move remove-gets.patch to BASE_SRC_URI, it's needed for
    bison-native too if host has (e)glibc-2.16

Nitin A Kamble (1):
  libtasn1: fix build with automake 1.12

Richard Purdie (2):
  bitbake: command: Add missing import traceback
  bitbake: command: Fix getCmdLineAction bugs

Saul Wold (2):
  libtasn1: Update to 2.12
  libtasn1: Upgrade to 2.13

 bitbake/lib/bb/command.py                          |   46 +++++++++++++-------
 bitbake/lib/bb/server/process.py                   |    2 +-
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py        |    5 ++-
 bitbake/lib/bb/ui/depexp.py                        |   38 ++++++++++------
 bitbake/lib/bb/ui/goggle.py                        |   17 +++++---
 bitbake/lib/bb/ui/knotty.py                        |   45 +++++++++++++------
 bitbake/lib/bb/ui/ncurses.py                       |   21 ++++++---
 meta/recipes-devtools/bison/bison_2.5.bb           |    4 +-
 .../libtasn1/libtasn1_fix_for_automake_1.12.patch  |   28 ++++++++++++
 .../gnutls/{libtasn1_2.11.bb => libtasn1_2.13.bb}  |    8 ++--
 10 files changed, 150 insertions(+), 64 deletions(-)
 create mode 100644 meta/recipes-support/gnutls/libtasn1/libtasn1_fix_for_automake_1.12.patch
 rename meta/recipes-support/gnutls/{libtasn1_2.11.bb => libtasn1_2.13.bb} (65%)

-- 
1.7.9.5


