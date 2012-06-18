Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FE2E00746
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 12:56:41 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0028030461
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 15:56:35 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Jun 2012 12:56:32 -0700
Message-Id: <cover.1340038493.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0028030461.C306E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/8] denzil pull request
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
X-List-Received-Date: Mon, 18 Jun 2012 19:56:41 -0000

Hello,

This is a request for the poky denzil branch, based on a set of
commits I've been testing from my sgarman/denzil-next branch.

These commits have undergone the following testing on the autobuilder:

nightly:
http://autobuilder.yoctoproject.org:8010/builders/nightly/builds/518

nightly-multilib:
http://autobuilder.yoctoproject.org:8010/builders/nightly-multilib/builds/114

nightly-non-gpl3:
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/115

nightly-tiny:
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/97

nightly-meta-intel:
http://autobuilder.yoctoproject.org:8010/builders/nightly-meta-intel/builds/106

Scott

The following changes since commit 119e1b7dc97a82ff0791d1b4ba519361ff46cbd1:

  poky.conf: use correct version string for Ubuntu 12.04 (2012-06-14 11:27:19 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-testing
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull2

Gary Thomas (1):
  webkit-gtk: Apply work around for all PowerPC targets

Laurentiu Palcu (1):
  sanity.bbclass: warn the user if BBPATH contains wrong entries

Nitin A Kamble (1):
  eglibc: package mtrace separately

Richard Purdie (2):
  openjade-native: Ensure we reautoconf the package
  poky-tiny: eliminate mtrace rdepends

Saul Wold (2):
  quilt: added ac_cv_path_BASH to CACHED_CONFIGUREVARS
  eglibc: added ac_cv_path_ to CACHED_CONFIGUREVARS

Scott Rifenbark (1):
  documentation: Updated Manual revision history table

 documentation/adt-manual/adt-manual.xml            |    2 +-
 documentation/bsp-guide/bsp-guide.xml              |    2 +-
 documentation/dev-manual/dev-manual.xml            |    2 +-
 documentation/kernel-manual/kernel-manual.xml      |    2 +-
 documentation/poky-ref-manual/poky-ref-manual.xml  |    2 +-
 meta-yocto/conf/distro/poky-tiny.conf              |    5 ++
 meta/classes/sanity.bbclass                        |   13 ++-
 meta/recipes-core/eglibc/eglibc-package.inc        |    7 +-
 meta/recipes-core/eglibc/eglibc.inc                |    2 +
 meta/recipes-core/eglibc/eglibc_2.13.bb            |    2 +-
 meta/recipes-core/eglibc/eglibc_2.15.bb            |    2 +-
 meta/recipes-core/tasks/task-core-tools-debug.bb   |    4 +
 .../openjade/openjade-1.3.2/reautoconf.patch       |   83 ++++++++++++++++++++
 .../openjade/openjade-native_1.3.2.bb              |    5 ++
 meta/recipes-devtools/quilt/quilt_0.51.bb          |    5 +-
 meta/recipes-sato/webkit/webkit-gtk_svn.bb         |   15 ++--
 16 files changed, 137 insertions(+), 16 deletions(-)
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/reautoconf.patch

-- 
1.7.9.5


