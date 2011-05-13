Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAD774C800C0
	for <poky@yoctoproject.org>; Fri, 13 May 2011 01:59:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 May 2011 23:59:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,362,1301900400"; d="scan'208";a="642158349"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 23:59:43 -0700
Message-Id: <cover.1305269419.git.lei.mei@intel.com>
Old-Date: Fri, 13 May 2011 14:50:19 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/2] Add checklicense task to get missing license text
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
Date: Fri, 13 May 2011 06:59:46 -0000
X-Original-Date: 五, 13  5月 2011 15:04:48 +0800
X-List-Received-Date: Fri, 13 May 2011 06:59:46 -0000

From: Mei Lei <lei.mei@intel.com>

Hi Saul,
	For adding the information of missing license text into pkg-report system, I add a new task called checklicense in distrodata.bbclass. This check logic is writen by Beth in license.bbclass, avoid affecting the build time, I rewrite this task in distrodata.bbclass.
	And there are a lot of repeat code in distrodata.bbclass, create a new function to reduce the repeat code.

Thanks
Lei

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/licensecheck
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/licensecheck

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (2):
  distro_check.py: Add a new function to reduce the repeat code
  distrodata.bbclass: Add checklicense task

 meta/classes/distrodata.bbclass |   88 ++++++++++++++++++++++++---------------
 meta/lib/oe/distro_check.py     |   15 +++++++
 2 files changed, 69 insertions(+), 34 deletions(-)


