Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A15694C800B7
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 11:39:50 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Mar 2011 09:39:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,243,1299484800"; d="scan'208";a="725147923"
Received: from unknown (HELO localhost) ([10.255.12.171])
	by orsmga001.jf.intel.com with ESMTP; 25 Mar 2011 09:39:49 -0700
Message-Id: <cover.1301070812.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Mar 2011 10:33:32 -0600
Date: Fri, 25 Mar 2011 10:40:54 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/2] [BUGID# 931] - [DOCS] Removed Fedora 14 bitbake native note
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
X-List-Received-Date: Fri, 25 Mar 2011 16:39:50 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 931] - I have removed the Note indicating that the user must run
'bitbake make-native' if running Fedora 14.
This is no longer a requirement for YP Release 1.0

The Colin Walters patch can be ignored.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/qs-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (2):
  documentation/yocto-project-qs/yocto-project-qs.xml: Bug reference
    added courtesy Colin Walters
  documentation/yocto-project-qs/yocto-project-qs.xml:  [BUGID# 931] -
    Removed Fedora 14 bitbake native note

 .../yocto-project-qs/yocto-project-qs.xml          |    9 ---------
 1 files changed, 0 insertions(+), 9 deletions(-)


