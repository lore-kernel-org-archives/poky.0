Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B063E013A6
	for <poky@yoctoproject.org>; Mon,  3 Sep 2012 03:45:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Sep 2012 03:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,359,1344236400"; d="scan'208";a="188338820"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by orsmga001.jf.intel.com with ESMTP; 03 Sep 2012 03:45:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  3 Sep 2012 11:44:56 +0100
Message-Id: <cover.1346668926.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-yocto][PATCH 0/1] Package group fixes
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
X-List-Received-Date: Mon, 03 Sep 2012 10:45:13 -0000

This patch on top of the changes submitted for OE-Core fixes up
meta-yocto after the rename of task to packagegroup.



The following changes since commit 9789b60fb0668eb978de64f032a23048f780c78a:

  packagegroup-*: add RPROVIDES for backwards compatibility (2012-09-03 11:27:23 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/task-rework
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/task-rework

Paul Eggleton (1):
  meta-yocto: fix for task rename

 meta-yocto/conf/distro/include/distro_alias.inc    |   60 ++++++++++----------
 meta-yocto/conf/distro/include/maintainers.inc     |   36 ++++++------
 meta-yocto/conf/distro/include/recipe_color.inc    |   12 ++--
 .../conf/distro/include/upstream_tracking.inc      |    2 +-
 meta-yocto/conf/distro/poky-tiny.conf              |    6 +-
 meta-yocto/conf/distro/poky.conf                   |    2 +-
 .../packagegroup-core-tools-profile.bbappend       |    2 +
 .../tasks/task-core-tools-profile.bbappend         |    2 -
 .../packagegroup-core-sdk-gmae.bbappend}           |    0
 ...group-core-standalone-gmae-sdk-target.bbappend} |    0
 .../packagegroup-core-tools-profile.bbappend       |    2 +
 .../tasks/task-core-tools-profile.bbappend         |    2 -
 12 files changed, 63 insertions(+), 63 deletions(-)
 create mode 100644 meta-yocto/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
 delete mode 100644 meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
 rename meta-yocto/recipes-gnome/{tasks/task-core-sdk-gmae.bbappend => packagegroups/packagegroup-core-sdk-gmae.bbappend} (100%)
 rename meta-yocto/recipes-gnome/{tasks/task-core-standalone-gmae-sdk-target.bbappend => packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend} (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend

-- 
1.7.9.5


