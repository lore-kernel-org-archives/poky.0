Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A857DE0044D
	for <poky@yoctoproject.org>; Fri, 23 Mar 2012 10:11:16 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2NHBCMK008436;
	Fri, 23 Mar 2012 10:11:13 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 23 Mar 2012 13:12:41 -0400
Message-Id: <cover.1332522512.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] meta-yocto: add linux-libc-headers-yocto
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
X-List-Received-Date: Fri, 23 Mar 2012 17:11:16 -0000

Richard/Saul,

As a follow up to my series to oe-core, this is the movement of 
linux-libc-headers-yocto to meta-yocto. There are still some use cases
for which we want this, but it makes sense to move it to meta-yocto to
support those cases.

Built and booted with this as the PREFERRED_PROVIDER_linux-libc-headers
provider.

Cheers,

Bruce

The following changes since commit 47a6043c6b3b5dcf06c7d57eb5b21c93936be01e:
  Bruce Ashfield (1):
        linux-libc-headers-yocto: remove from oe-core

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/libc-headers-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/libc-headers-yocto

Bruce Ashfield (1):
  linux-libc-headers-yocto: move to meta-yocto

 .../linux-libc-headers-yocto_git.bb                |   64 ++++++++++++++++++++
 1 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb


