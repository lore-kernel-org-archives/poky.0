Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BC7FE0059A
	for <poky@yoctoproject.org>; Thu, 23 Feb 2012 11:36:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Feb 2012 11:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110049227"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.61])
	by azsmga001.ch.intel.com with ESMTP; 23 Feb 2012 11:35:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 23 Feb 2012 19:35:52 +0000
Message-Id: <cover.1330025617.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] Set custom Yocto psplash image
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
X-List-Received-Date: Thu, 23 Feb 2012 19:36:05 -0000

This patch corresponds to the one just sent to OE-Core which sets the OE
logo as the default splash image there. They should be applied at around
the same time.

The following changes since commit d8b3718303c3d56394c722059f1a73bd79131d0a:

  texi2html: Fix for multilib (2012-02-22 23:03:16 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/yocto-psplash
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/yocto-psplash

Paul Eggleton (1):
  meta-yocto: add bbappend to restore Yocto psplash image

 .../recipes-core/psplash/files/psplash-poky-img.h  |  914 ++++++++++++++++++++
 .../recipes-core/psplash/psplash_git.bbappend      |    4 +
 2 files changed, 918 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-core/psplash/files/psplash-poky-img.h
 create mode 100644 meta-yocto/recipes-core/psplash/psplash_git.bbappend

-- 
1.7.5.4


