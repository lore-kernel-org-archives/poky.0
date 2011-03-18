Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95F804C8009D
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:54:37 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 05:54:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="898650574"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 05:54:36 -0700
Message-Id: <cover.1300452791.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Mar 2011 06:53:11 -0600
Date: Fri, 18 Mar 2011  6:55:28 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/4] [DOCS] BSP Manual Updates
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
X-List-Received-Date: Fri, 18 Mar 2011 12:54:37 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These commits updated the front matter of the manual and also
provided a spell check.  This should be it for the 1.0 version 
of the BSP Manual.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/bsp-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/bsp-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (4):
  documentation/bsp-guide/figures/bsp-title.png: Updated PNG file for
    title
  documentation/bsp-guide/bsp-guide.xml: Updated Title Page
  documentation/bsp-guide/style.css:  Updated Style Sheet
  documentation/bsp-guide/bsp.xml:  Spell check

 documentation/bsp-guide/bsp-guide.xml         |   13 +++++++------
 documentation/bsp-guide/bsp.xml               |    9 +++++----
 documentation/bsp-guide/figures/bsp-title.png |  Bin 15029 -> 14940 bytes
 documentation/bsp-guide/style.css             |   24 +++++++++++++++---------
 4 files changed, 27 insertions(+), 19 deletions(-)


