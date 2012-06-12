Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D101CE006D9
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:24 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id C1F182FD1D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:15 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:40:50 -0700
Message-Id: <cover.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: C1F182FD1D.69E54
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: RFC: [PATCH 00/31] denzil pull request
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:25 -0000

Hello,

This is a pull request for the poky denzil branch, based on a set of
commits I've been testing from my sgarman/denzil-next branch.

I'm submitting this as an RFC so the community can offer feedback as
soon as possible. I'm planning on running this through the Yocto
autobuilder tonight and will reply to this thread with test results.
Assuming we get green builds, the goal is to get this pull request
merged into poky's denzil branch fairly quickly, so please speak
up if you have any comments or concerns with these commits.

Thanks,

Scott


The following changes since commit 7552ccd06c6327b5f36ee0cceb432946f8e98d3f:

  documentation/yocto-project-qs/yocto-project-qs.xml: pre-built example fix (2012-05-31 21:22:29 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-testing
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

Dongxiao Xu (1):
  Hob: Clear the building status if command failed

Jesse Zhang (1):
  beecrypt: disable java

Joe Slater (1):
  shared-mime-info: fix build race condition

Joshua Lock (1):
  sanity.bbclass: copy the data store and finalise before running
    checks

Kang Kai (1):
  cooker.py: terminate the Parser processes

Laurentiu Palcu (1):
  freetype: upgrade to 2.4.9

Liming An (2):
  Hob: change the refresh icon speed to make it view clear
  Hob: add original url show function with the tooltip hyperlink for
    user

Mihai Lindner (1):
  sudo: fixed wrong `chmod` path

Paul Eggleton (3):
  classes/sanity: send sanity check failure as a separate event for Hob
  hob: handle sanity check failures as a separate event
  poky.conf: use correct version string for Ubuntu 12.04

Paul Gortmaker (1):
  gitignore: add wildcard to match toplevel patch files

Richard Purdie (4):
  netbase: Correctly set FILESEXTRAPATHS to include the version
  Update version to 1.15.2 (correspdoning to Yocto 1.2 release)
  bitbake.conf: Improve wget timeouts
  image.bbclass: Ensure ${S} is cleaned at the start of rootfs
    generation

Robert Yang (1):
  rpm 5.4.0: respect to the arch when choose the alternatives

Scott Garman (1):
  runqemu-ifup: enable arp proxying

Scott Rifenbark (4):
  documentation/bsp-guide/bsp.xml: BSP recommendations section added
  documentation/bsp-guide/bsp.xml: Updates to requirements section
  documentation/bsp-guide/bsp.xml: Review comments to recommendations
  documentation/poky.ent:  Updated variables for correct 1.2.1 build.

Shane Wang (1):
  Hob: Adjust the progress bar and set 100% only when all is done.

Song.Li (1):
  groff: Fix build on Fedora 17

Tom Zanussi (4):
  yocto-kernel: use BUILDDIR to find bblayers.conf
  yocto-bsp: clarify help with reference to meta-intel
  gnupg: add libusb to DEPENDS
  gnupg: disable CCID driver

Xiaofeng Yan (1):
  ncurses: Avoid occasional builling failure when having parallel
    processable task

Zhai Edwin (1):
  webkit-gtk: Use glib as unicode backend to avoid browser crash

 .gitignore                                         |    1 +
 bitbake/bin/bitbake                                |    2 +-
 bitbake/lib/bb/__init__.py                         |    2 +-
 bitbake/lib/bb/cooker.py                           |    9 +-
 bitbake/lib/bb/event.py                            |    8 +
 bitbake/lib/bb/ui/crumbs/builder.py                |   19 +-
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py        |   16 ++
 bitbake/lib/bb/ui/crumbs/hobwidget.py              |    2 +-
 bitbake/lib/bb/ui/crumbs/persistenttooltip.py      |   19 ++
 documentation/bsp-guide/bsp.xml                    |  232 +++++++++++++++++++-
 documentation/poky.ent                             |    4 +-
 meta-yocto/conf/distro/poky.conf                   |    2 +-
 .../recipes-core/netbase/netbase_4.47.bbappend     |    2 +-
 meta/classes/image.bbclass                         |    1 +
 meta/classes/sanity.bbclass                        |  143 ++++++------
 meta/conf/bitbake.conf                             |    8 +-
 meta/recipes-core/ncurses/ncurses.inc              |   23 +-
 .../rpm/rpm/rpm-respect-arch.patch                 |   67 ++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    3 +-
 meta/recipes-extended/groff/groff_1.20.1.bb        |   24 +-
 meta/recipes-extended/sudo/sudo_1.8.4p4.bb         |    6 +-
 .../no-hardcode.patch                              |    0
 .../{freetype_2.4.8.bb => freetype_2.4.9.bb}       |    4 +-
 meta/recipes-sato/webkit/webkit-gtk_svn.bb         |   10 +-
 meta/recipes-support/beecrypt/beecrypt_4.2.1.bb    |    4 +-
 meta/recipes-support/gnupg/gnupg_2.0.18.bb         |    3 +-
 .../shared-mime-info/install-data-hook.patch       |   21 ++
 .../shared-mime-info/shared-mime-info_0.91.bb      |    5 +-
 scripts/lib/bsp/help.py                            |   48 +++-
 scripts/lib/bsp/kernel.py                          |    7 +-
 scripts/runqemu-ifup                               |    1 +
 31 files changed, 589 insertions(+), 107 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-respect-arch.patch
 rename meta/recipes-graphics/freetype/{freetype-2.4.8 => freetype-2.4.9}/no-hardcode.patch (100%)
 rename meta/recipes-graphics/freetype/{freetype_2.4.8.bb => freetype_2.4.9.bb} (91%)
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch

-- 
1.7.9.5


