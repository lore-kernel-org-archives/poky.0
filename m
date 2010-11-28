Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB3F44C811DC
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:40 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpUx-00019e-4F
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:31 -0800
Received: by rex (Postfix, from userid 1000)
	id 9C53824A8B; Sun, 28 Nov 2010 14:16:09 -0800 (PST)
Message-Id: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 14:07:38 -0800
To: poky@pokylinux.org
Subject: [PATCH 00/16] Poky core tweaks
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:41 -0000

I want to start posting my patches here like everyone else does. Whilst 
this time around, I did merge them in future I will not be doing that
giving some time for review. 

This series fixes a number of issues that have either been raised on 
the mailing list or elsewhere and should give some noticable 
performance improvements!

This lets me test out Darren's pull request scripts too!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: rpurdie/tweaks
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/tweaks

Cheers,

Richard

---


Paul Eggleton (1):
  qemu: fix failure to find zlib header files during configure

Richard Purdie (15):
  bitbake/runqueue.py: Fix stamp handling for noexec tasks
  scripts/poky-env-internal/image-swab.bbclass: Remove OEROOT
    references
  scripts/poky-env-internal: Remove unset variables
  scripts/poky-env-internal: Further cleanups
  scripts: Remove obsolete stage-manager scripts
  curl: Fix gnutls option (append ordering was incorrect)
  rm_work: Set BB_SCHEDULER as done in OE.dev to ensure disk space is
    freed sooner rather than at the end of the build
  utility-tasks: Switch listtasks to use bb.plain() for printing output
  bitbake: Simplfy pre and post cooker hooks
  font-util: Set RDEPENDS for virtclass-native to exclude encodings to
    copy DEPENDS
  font-alias: Set RDEPENDS to exclude encodings in the native case
  native.bbclasS: Add handing to remap RDEPENDS fields and avoid
    crossed target and native dependency trees
  bitbake/runqueue: Teach scenequeue about noexec tasks (since they
    don't do anything we can assume they're always successful
  native.bbclass: Mark various package functions as noexec since they
    don't do any work
  package-index: Fix after noexec changes

 bitbake/lib/bb/cooker.py                           |    9 +-
 bitbake/lib/bb/runqueue.py                         |   13 +-
 bitbake/lib/bb/server/none.py                      |    9 +-
 bitbake/lib/bb/server/xmlrpc.py                    |    7 +-
 meta/classes/image-swab.bbclass                    |    2 +-
 meta/classes/native.bbclass                        |   19 +-
 meta/classes/rm_work.bbclass                       |    4 +
 meta/classes/utility-tasks.bbclass                 |    2 +-
 meta/recipes-core/meta/package-index.bb            |   32 +-
 .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   20 +
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 +-
 .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    1 +
 meta/recipes-graphics/xorg-font/font-util_1.2.0.bb |    1 +
 meta/recipes-support/curl/curl_7.21.2.bb           |    7 +-
 scripts/poky-env-internal                          |   29 +-
 scripts/stage-manager                              |  156 ---
 scripts/stage-manager-ipkg                         | 1186 --------------------
 scripts/stage-manager-ipkg-build                   |  246 ----
 18 files changed, 97 insertions(+), 1649 deletions(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
 delete mode 100755 scripts/stage-manager
 delete mode 100755 scripts/stage-manager-ipkg
 delete mode 100755 scripts/stage-manager-ipkg-build


