Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B521E006BA
	for <poky@yoctoproject.org>; Tue, 15 Nov 2011 16:16:04 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Nov 2011 16:16:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,517,1315206000"; d="scan'208";a="75377949"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.12.41])
	by azsmga001.ch.intel.com with ESMTP; 15 Nov 2011 16:16:03 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 15 Nov 2011 16:16:01 -0800
Message-Id: <cover.1321402302.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.1
Subject: [RFC PATCH 0/1] Can we drop Clutter bbappends?
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
X-List-Received-Date: Wed, 16 Nov 2011 00:16:04 -0000

All,

The subject says it all. My reading of recent changes in oe-core around X and
clutter lead me to believe that our bbappend is redundant so I'm proposing we
drop it.

Both virtual/libgl being in DEPENDS and passing the --with-flavour=glx option
are part of the standard clutter.inc now.

I may well be wrong but I like patches as a way to start discussion.

Cheers,
Joshua

Please review the following changes for suitability for inclusion. If you have
any objections or suggestions for improvement, please respond to the patches. If
you agree with the changes, please provide your Acked-by.

The following changes since commit fa81f8dfb7a342e355b608aa4204cf23ed2b251c:

  mime.bbclass: fix typo (2011-11-15 12:05:30 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib josh/work
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=josh/work

Joshua Lock (1):
  clutter: drop unneeded bbappends

 .../clutter/clutter-1.6_1.6.18.bbappend            |    4 ----
 .../clutter/clutter-1.8_1.8.0.bbappend             |    4 ----
 .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ----
 3 files changed, 0 insertions(+), 12 deletions(-)
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter_git.bbappend

-- 
1.7.7.1


