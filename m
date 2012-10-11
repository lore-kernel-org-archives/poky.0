Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 497CDE0027E
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="204473762"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 11 Oct 2012 11:43:55 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:48 -0700
Message-Id: <cover.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/8] denzil pull request 3
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
X-List-Received-Date: Thu, 11 Oct 2012 18:43:56 -0000

Hi Richard,

This pull request correspons to the one I submitted to oe-core recently
and that you've already merged, except for the two bitbake patches which
we also need for the poky tree.

Scott

The following changes since commit e7d4eba0a9bc02d61a77129da4be2f0c9239884b:

  Save proxy settings (2012-10-01 18:13:15 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/denzil-next
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull3

Darren Hart (1):
  gnutls: Update SRC_URI to use GNU_MIRROR

Dennis Lan (1):
  openjade-native: fix undefined Getopts error, use std namespace

Jesse Zhang (1):
  udev: don't mount with -o sync

Martin Jansa (1):
  openssl: add deprecated and unmaintained find.pl from perl-5.14 to
    fix perlpath.pl

Paul Eggleton (3):
  classes/cml1: ensure -c menuconfig forces a rebuild next time
  bitbake: bitbake: ensure -f causes dependent tasks to be re-run
  bitbake: lib/bb/siggen.py: log when tainting the signature of a task

Richard Purdie (1):
  siteconfig: Clear cache before rebuilding

 bitbake/lib/bb/build.py                            |   18 +++++++
 bitbake/lib/bb/cooker.py                           |    6 +--
 bitbake/lib/bb/runqueue.py                         |   12 ++---
 bitbake/lib/bb/siggen.py                           |   35 +++++++++++++
 meta/classes/cml1.bbclass                          |   16 ++++++
 meta/classes/siteconfig.bbclass                    |    1 +
 .../openssl/openssl-1.0.0i/find.pl                 |   54 ++++++++++++++++++++
 .../recipes-connectivity/openssl/openssl_1.0.0i.bb |    7 ++-
 meta/recipes-core/udev/udev/mount.sh               |    2 +-
 meta/recipes-core/udev/udev_164.bb                 |    2 +-
 .../openjade/openjade-1.3.2/msggen.pl.patch        |   44 ++++++++++++++++
 .../openjade/openjade-native_1.3.2.bb              |    3 +-
 meta/recipes-support/gnutls/gnutls.inc             |    4 +-
 13 files changed, 189 insertions(+), 15 deletions(-)
 create mode 100644 meta/recipes-connectivity/openssl/openssl-1.0.0i/find.pl
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/msggen.pl.patch

-- 
1.7.9.5


