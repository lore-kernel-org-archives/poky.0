Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF4634C80ABA
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 01:29:58 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Apr 2011 23:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,285,1301900400"; d="scan'208";a="635705151"
Received: from unknown (HELO localhost) ([10.255.13.24])
	by orsmga002.jf.intel.com with ESMTP; 28 Apr 2011 23:29:58 -0700
Message-Id: <cover.1304058397.git.dvhart@linux.intel.com>
Old-Date: Thu, 28 Apr 2011 23:26:37 -0700
Date: Thu, 28 Apr 2011 23:29:56 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2] logging: migrate to bb* logging and remove oe*
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
X-List-Received-Date: Fri, 29 Apr 2011 06:29:59 -0000

From: Darren Hart <dvhart@linux.intel.com>

Now that the new bbnote and similar functions are in place with
logging.bbclass, migrate all users of the oe* logging API over
to bb* and remove the oe* logging facilities from base.bbclass.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/logging
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/logging

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (2):
  logging: update existing oe* logging users to the bb* interface
  logging: delete the oe(note|warn|fatal|debug) functions

 meta/classes/autotools.bbclass               |   16 ++++++------
 meta/classes/base.bbclass                    |   31 ++-----------------------
 meta/classes/distutils.bbclass               |    8 +++---
 meta/classes/kernel.bbclass                  |    4 +-
 meta/classes/qmake_base.bbclass              |   10 ++++----
 meta/classes/scons.bbclass                   |    4 +-
 meta/classes/sip.bbclass                     |    4 +-
 meta/classes/sourcepkg.bbclass               |    4 +-
 meta/classes/srec.bbclass                    |    2 +-
 meta/classes/utils.bbclass                   |   20 ++++++++--------
 meta/recipes-core/dropbear/dropbear.inc      |    2 +-
 meta/recipes-core/eglibc/eglibc_2.12.bb      |    2 +-
 meta/recipes-core/glibc/glibc_2.10.1.bb      |    2 +-
 meta/recipes-devtools/python/python_2.6.6.bb |    2 +-
 14 files changed, 43 insertions(+), 68 deletions(-)


