Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA4CD4C80AC3
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:32:58 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 10:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="668781506"
Received: from unknown (HELO localhost) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 10:32:58 -0700
Message-Id: <cover.1300469427.git.dvhart@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 10:30:27 -0700
Date: Fri, 18 Mar 2011 10:32:58 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2] qemu: nVidia warnings and warning format cleanup
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
X-List-Received-Date: Fri, 18 Mar 2011 17:32:59 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patches incorporate an updated version of Edwin's patch to
warn the user on the detection of nVidia's libGL and also make the warning
message format used in the script consistent.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/bernard/base
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/base

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (2):
  qemu: warn user if nVidia libGL is detected (leads to qemu segfault)
  qemu: make warning messages consistent in format

 scripts/poky-qemu-internal |   21 +++++++++++++++++----
 1 files changed, 17 insertions(+), 4 deletions(-)


