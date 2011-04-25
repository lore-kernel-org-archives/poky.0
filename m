Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A86794C804FF
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 14:36:41 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 12:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="633900085"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.56])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2011 12:36:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Apr 2011 12:36:34 -0700
Message-Id: <cover.1303760083.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Chris Larson <clarson@kergoth.com>, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/3] logging updates
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
X-List-Received-Date: Mon, 25 Apr 2011 19:36:41 -0000

The first two patches fix issues in the existing bash logging infrastructure.
The third proposes a new bash logging mechanism.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/logging
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/logging

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (3):
  logging: fix oedebug loglevel test
  logging: remove unused BBDEBUG from local.conf.sample
  logging: add bb* logging mechanisms for bash recipe functions

 meta-yocto/conf/local.conf.sample |    2 -
 meta/classes/base.bbclass         |    9 +++--
 meta/classes/logging.bbclass      |   72 +++++++++++++++++++++++++++++++++++++
 3 files changed, 77 insertions(+), 6 deletions(-)
 create mode 100644 meta/classes/logging.bbclass


