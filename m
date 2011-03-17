Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C0F24C80578
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 13:45:34 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Mar 2011 11:45:33 -0700
Message-Id: <849307$c1gve2@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,200,1299484800"; d="scan'208";a="404258250"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by azsmga001.ch.intel.com with ESMTP; 17 Mar 2011 11:45:32 -0700
Old-Date: Thu, 17 Mar 2011 13:13:41 -0500
Date: Thu, 17 Mar 2011 13:45:26 -0500
To: bruce.ashfield@windriver.com, bruce.ashfield@gmail.com,
	poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [KERNEL][linux-yocto-stable][PATCH 0/1] Fix for bug 888
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
X-List-Received-Date: Thu, 17 Mar 2011 18:45:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes [BUGID #888].  Please pull.

Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
  Branch: tzanussi/crownbay-bugfix-888
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-bugfix-888

Tom Zanussi (1):
  crownbay: update a handful of EMGD licenses

 drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   39 ++--
 .../emgd/pvr/services4/system/common/sysconfig.c   |  287 ++++++++++----------
 .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   64 +++---
 .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   64 +++---
 .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   48 ++--
 5 files changed, 246 insertions(+), 256 deletions(-)


