Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CAAC4C80578
	for <poky@yoctoproject.org>; Tue, 10 May 2011 00:25:41 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2011 22:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433404604"
Received: from unknown (HELO localhost) ([10.255.12.75])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2011 22:25:40 -0700
Message-Id: <cover.1305004683.git.sgw@linux.intel.com>
Old-Date: Mon, 9 May 2011 22:18:03 -0700
Date: Mon, 09 May 2011 22:25:40 -0700
To: poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/1] POKY - Master Pull Request
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
X-List-Received-Date: Tue, 10 May 2011 05:25:41 -0000

From: Saul Wold <sgw@linux.intel.com>

Richard,

This is a change set that matches up with Bruce's changeset
contained in tonight's consolidated pull request.



Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: stage/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=stage/master

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Bruce Ashfield (1):
  linux-yocto: move non-core machines to meta-yocto

 meta-yocto/conf/layer.conf                         |    3 ++-
 .../linux/linux-yocto-stable_git.bbappend          |   12 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   12 ++++++++++++
 3 files changed, 26 insertions(+), 1 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend


