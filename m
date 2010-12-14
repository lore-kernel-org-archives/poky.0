Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 225C94C81205
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 18:28:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 16:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,339,1288594800"; d="scan'208";a="686815031"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 16:28:13 -0800
Message-Id: <cover.1292286117.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Mon, 13 Dec 2010 16:21:57 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] Docs: BSP Guide edits
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
X-List-Received-Date: Tue, 14 Dec 2010 00:28:14 -0000

The commit by Darren fixed a typo in the BBPATH example.
The commit by Scott R was an editorial pass through the entire document.
This is a review copy for Saul and Tom Z that is implementing some new
BSP file system structures.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Darren Hart (1):
  bsp-guide: correct BBPATH example

Scott Rifenbark (1):
  documentation/bsp-guide/bsp.xml:  General edits.

 documentation/bsp-guide/bsp.xml |  187 +++++++++++++++++++--------------------
 1 files changed, 92 insertions(+), 95 deletions(-)


