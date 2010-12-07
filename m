Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E08884C811D0
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 13:10:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="581463877"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.146])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2010 11:10:27 -0800
Message-Id: <cover.1291748065.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Tue, 7 Dec 2010 10:54:25 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] Docs: kernel documentation and Poky ref manual bitbake appendix
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
X-List-Received-Date: Tue, 07 Dec 2010 19:10:28 -0000

Please pull these changes for the kernel document and the bitbake appendix in the Poky Reference Manual.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (3):
  documentation/kernel-manual:  Added Bruce Ashfields review comments.
  documentation/kernel-manual/kernel-concepts.xml:  Re-worded a note to
    state best practices for organizing shared features.
  documentation/poky-ref-manual/ref-bitbake.xml:  Completed general
    edits.

 documentation/kernel-manual/kernel-concepts.xml  |   30 ++-
 documentation/kernel-manual/kernel-doc-intro.xml |    2 +-
 documentation/kernel-manual/kernel-how-to.xml    |   33 ++--
 documentation/poky-ref-manual/ref-bitbake.xml    |  269 +++++++++++-----------
 4 files changed, 172 insertions(+), 162 deletions(-)


