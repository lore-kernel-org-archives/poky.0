Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77723E01363
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 06:23:42 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3ADNcgT007244;
	Tue, 10 Apr 2012 06:23:38 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue, 10 Apr 2012 09:23:31 -0400
Message-Id: <cover.1334064083.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
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
X-List-Received-Date: Tue, 10 Apr 2012 13:23:42 -0000

Richard/Saul,

Here's a quick bump of the reference board SRCREVs to v3.0.24.
This has been in tree for some time, and has been built many
times by anyone using AUTOREV (myself included). This escaped my
mass update to v3.0.24.

Cheers,

Bruce

The following changes since commit c0a812c22272887390e44734fb426fd47c05e346:

  documentation/bsp-guide/bsp.xml: Added a info about meta-intel layer (2012-04-10 13:32:45 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update hardware reference boards to v3.0.24

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.5.4


