Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37DD64C800A7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:15:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2011 10:15:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="607861801"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2011 10:15:17 -0800
Message-Id: <cover.1299002830.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 1 Mar 2011 12:07:10 -0600
Date: Tue, 01 Mar 2011 12:16:07 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/3] [BUGID #695] [DOCS] BSP Guide update title and title page
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
X-List-Received-Date: Tue, 01 Mar 2011 18:15:18 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the title page so that the 's' was not used in the title. 
This satisfies bug #695.  I also changed the font and logo to be more 
pleasing.  Updated Richard Purdie's email to be Linux Foundation. 
I put in placeholding text for revision.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (3):
  [BUGID# 695] - documentation/bsp-guide/figures/bsp-title.png: Updated
    title graphic
  documentation/bsp-guide/bsp-guide.xml: Updated RP email address
  documentation/bsp-guide/bsp-guide.xml: Updated revision history on
    title page.

 documentation/bsp-guide/bsp-guide.xml         |    9 +++++++--
 documentation/bsp-guide/figures/bsp-title.png |  Bin 15226 -> 15029 bytes
 2 files changed, 7 insertions(+), 2 deletions(-)
 mode change 100755 => 100644 documentation/bsp-guide/figures/bsp-title.png


