Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22CE9E006D9;
	Fri, 22 Jun 2012 08:54:46 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.wrs.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5MFsWU0003308;
	Fri, 22 Jun 2012 08:54:32 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 22 Jun 2012 12:04:44 -0400
Message-Id: <cover.1340380930.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-libc-headers-yocto: 3.4 and cleanups
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
X-List-Received-Date: Fri, 22 Jun 2012 15:54:46 -0000

Richard/Saul,

There aren't that many users of this recipe, but for those cases
that we need it .. this needed a bit of love. I've made the same
fix that went into the oe-core libc-headers and then bumped this
recipe to the 3.4 standard/base for headers. With recent updates
to the tools, there were parts of this recipe that could be removed,
and they are now gone!

Cheers,

Bruce

The following changes since commit b876f42821383bf0069ee49b607ba06614417fba:
  Bogdan Marinescu (1):
        guile: fix compilation on MIPS/PPC

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/libc-headers
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/libc-headers

Bruce Ashfield (2):
  linux-libc-headers-yocto: use kernel-arch to set ARCH
  linux-libc-headers-yocto: update to v3.4 and remove unecessary code

 .../linux-libc-headers-yocto_git.bb                |   45 ++++----------------
 1 files changed, 8 insertions(+), 37 deletions(-)


