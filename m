Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 135A3E0142F
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 14:00:24 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D6EB830463
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 17:00:18 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jun 2012 14:00:17 -0700
Message-Id: <cover.1338843506.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D6EB830463.4AC03
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/7] denzil pull request
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
X-List-Received-Date: Mon, 04 Jun 2012 21:00:25 -0000

Hello,

This is a pull request for the poky denzil branch, based on a set of
commits I've been testing from my sgarman/denzil-next branch.

These commits have passed an array of build and runtime tests,
including the following nightly build:

http://autobuilder.yoctoproject.org:8010/builders/nightly/builds/492

a non-gplv3 build:

http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/87

and a tiny build:

http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/69

Please give this pull request a few days to receive feedback and ACKs
from the community.

Thanks,

Scott

The following changes since commit 7552ccd06c6327b5f36ee0cceb432946f8e98d3f:

  documentation/yocto-project-qs/yocto-project-qs.xml: pre-built example fix (2012-05-31 21:22:29 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-testing
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull1

Dongxiao Xu (1):
  Hob: Clear the building status if command failed

Liming An (2):
  Hob: change the refresh icon speed to make it view clear
  Hob: add original url show function with the tooltip hyperlink for
    user

Richard Purdie (2):
  netbase: Correctly set FILESEXTRAPATHS to include the version
  Update version to 1.15.2 (correspdoning to Yocto 1.2 release)

Tom Zanussi (2):
  yocto-kernel: use BUILDDIR to find bblayers.conf
  yocto-bsp: clarify help with reference to meta-intel

 bitbake/bin/bitbake                                |    2 +-
 bitbake/lib/bb/__init__.py                         |    2 +-
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py        |    2 +
 bitbake/lib/bb/ui/crumbs/hobwidget.py              |    2 +-
 bitbake/lib/bb/ui/crumbs/persistenttooltip.py      |   19 ++++++++
 .../recipes-core/netbase/netbase_4.47.bbappend     |    2 +-
 scripts/lib/bsp/help.py                            |   48 ++++++++++++++++++--
 scripts/lib/bsp/kernel.py                          |    7 ++-
 8 files changed, 75 insertions(+), 9 deletions(-)

-- 
1.7.9.5


