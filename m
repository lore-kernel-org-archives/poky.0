Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDC2B4C805AF
	for <poky@yoctoproject.org>; Mon, 16 May 2011 16:04:08 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2011 14:04:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,221,1304319600"; d="scan'208";a="748079016"
Received: from unknown (HELO localhost) ([10.255.12.109])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2011 14:04:02 -0700
Message-Id: <cover.1305579527.git.tom.zanussi@intel.com>
Old-Date: Mon, 16 May 2011 15:58:47 -0500
Date: Mon, 16 May 2011 16:03:10 -0500
To: scott.m.rifenbark@intel.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] Add brief layer blurb to BSP Developer's Guide
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
X-List-Received-Date: Mon, 16 May 2011 21:04:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

To make it easier for users find info on how to use BSP layers without
having to dig around in the BSP READMEs or Poky Reference manual, add
a short blurb with pointers to more info elsewhere.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/bsp-layers-blurb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bsp-layers-blurb

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  bsp-guide: add short blurb on how to use BSP layers

 documentation/bsp-guide/bsp.xml |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)


