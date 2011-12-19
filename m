Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E730E00749
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 09:44:59 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Dec 2011 09:44:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87328251"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.37])
	by azsmga001.ch.intel.com with ESMTP; 19 Dec 2011 09:44:58 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 19 Dec 2011 17:44:14 +0000
Message-Id: <cover.1324316491.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] Restore Yocto Project psplash image
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
X-List-Received-Date: Mon, 19 Dec 2011 17:44:59 -0000

This should be applied after the corresponding OE-core patch which
sets the default psplash image to the OpenEmbedded logo.

The following changes since commit 45987c5135d22757ed2eb06b37e192d73309f59f:

  eglibc: Fixes for running regression tests (2011-12-19 09:29:18 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib paule/yocto-psplash
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/yocto-psplash

Paul Eggleton (1):
  meta-yocto: add bbappend to restore Yocto psplash image

 .../recipes-core/psplash/files/psplash-img.h       |  914 ++++++++++++++++++++
 .../recipes-core/psplash/psplash_git.bbappend      |    4 +
 2 files changed, 918 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-core/psplash/files/psplash-img.h
 create mode 100644 meta-yocto/recipes-core/psplash/psplash_git.bbappend

-- 
1.7.5.4


