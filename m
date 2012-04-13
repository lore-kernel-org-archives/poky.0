Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122F9E0070C
	for <poky@yoctoproject.org>; Fri, 13 Apr 2012 13:40:45 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3DKee9k011072;
	Fri, 13 Apr 2012 13:40:41 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 13 Apr 2012 16:40:30 -0400
Message-Id: <cover.1334349467.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update hardware reference SRCREVs
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
X-List-Received-Date: Fri, 13 Apr 2012 20:40:45 -0000

Richard/Saul,

When I bumped the reference boards to v3.0.34 a merge commit was missed.
This wasn't immediately visible since for most boards, it didn't matter,
and for the one that it did .. the board built fine:

Here's the patch commit header repeated:

[
  commit 8cd31f9b0 linux-yocto/meta-yocto: update hardware reference boards to v3.0.24

  Missed a merge commit on the hardware reference BSP branches.

  As a result, validate_branches is adjusting the tree to build the
  proper SRCREV. For machines with board specific commits this means
  that some of their commits are missing, which leads to boot failure.

  Bumping the SRCREVs fixes the problem
]

Fixes [YOCTO: #2292]

Cheers,

Bruce


The following changes since commit 04b16f1038f7cae445d741e86c2cc19c70f991c1:

  rpm-native: Compile python rpm module (with-python) (2012-04-13 16:04:12 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update hardware reference SRCREVs

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.5.4


