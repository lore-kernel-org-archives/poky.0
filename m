Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E35324C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 13:20:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jan 2011 11:20:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,323,1291622400"; d="scan'208";a="696955028"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2011 11:20:38 -0800
Message-Id: <cover.1295032581.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Old-Date: Fri, 14 Jan 2011 11:16:21 -0800
Date: Fri, 14 Jan 2011 11:20:05 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Docs Update: Yocto Project QS required packages updated
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
X-List-Received-Date: Fri, 14 Jan 2011 19:20:39 -0000

Added the packages autoconf and automake to both the Debeian-based
host and the RPM-based host example commands.  During a fresh
development host system test run I found these packages were
necessary to develop Yocto projects using Eclipse IDE.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/yocto-project-qs:  Updated the Packages section.

 .../yocto-project-qs/yocto-project-qs.xml          |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)


