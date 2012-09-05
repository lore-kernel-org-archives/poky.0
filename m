Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CA9E01371
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 17:42:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2012 17:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,369,1344236400"; d="scan'208";a="188841418"
Received: from unknown (HELO localhost) ([10.255.13.125])
	by azsmga001.ch.intel.com with ESMTP; 04 Sep 2012 17:42:47 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Tue,  4 Sep 2012 19:42:45 -0500
Message-Id: <cover.1346805560.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] yocto-bsp: remove packagegroup-core-tools-profile.bbappend
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
X-List-Received-Date: Wed, 05 Sep 2012 00:42:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset removes an obsolete bbappend from the yocto-bsp templates.

The following changes since commit 99c85ba93075a1aff789cafabbacf42e6a93bd32:

  build-appliance-image: Update to latest poky master (2012-09-04 18:04:40 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-task-profile-bbappend-rm
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-task-profile-bbappend-rm

Tom Zanussi (1):
  yocto-bsp: remove packagegroup-core-tools-profile.bbappend

 .../recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend | 2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend

-- 
1.7.11.4


