Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE3794C800A3
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 20:05:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2011 18:05:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="703046066"
Received: from unknown (HELO localhost) ([10.255.14.97])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2011 18:05:40 -0800
Message-Id: <cover.1296594728.git.scott@scott-desktop.(none)>
Old-Date: Tue, 1 Feb 2011 15:12:08 -0600
Date: Tue, 01 Feb 2011 20:05:52 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/1] [DOCS] Fix to the Poky Ref Manual
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
X-List-Received-Date: Wed, 02 Feb 2011 02:05:41 -0000

From: Scott Rifenbark <scott@scott-desktop.(none)>

The manual was not building during the make due to a 
stray </literallayout> command.  I removed it to correct 
the make operation.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <>
---


Scott Rifenbark (1):
  documentation/poky-ref-manual/extendpoky.xml:  Fixed make problem

 documentation/poky-ref-manual/extendpoky.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


