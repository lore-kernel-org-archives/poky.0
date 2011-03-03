Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B46CE4C800A4
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 13:48:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2011 11:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="893500091"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 11:48:26 -0800
Message-Id: <cover.1299181648.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 3 Mar 2011 13:47:28 -0600
Date: Thu, 03 Mar 2011 13:49:07 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/1] [DOCS] Kernel Manual Updates
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
X-List-Received-Date: Thu, 03 Mar 2011 19:48:26 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Modifications to the figure image (figures/kernel-title.png),
the heading styles (style.css), and the numbering system with
TOC display (yocto-project-kernel-manual-customization.xsl).

I updated the title image to display the manual title using
color #00557D, which coordinates with the Yocto Project website
color scheme.  I also updated the style sheet to use this same
color for the section headings.  This helps to set them off better
from the text.  Finally, I flipped the switch back on for this
manual to create chapter-specific table of contents sections
prior to each chapter and to include a all-inclusive TOC at the
beginning of the book.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/kernel-manual:  Kernel manual Style changes

 .../kernel-manual/figures/kernel-title.png         |  Bin 14334 -> 14305 bytes
 documentation/kernel-manual/style.css              |   30 ++++++++++----------
 .../yocto-project-kernel-manual-customization.xsl  |    2 +-
 3 files changed, 16 insertions(+), 16 deletions(-)


