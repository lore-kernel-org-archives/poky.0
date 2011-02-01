Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 731EA4C80082
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 21:34:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 19:34:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,407,1291622400"; d="scan'208";a="883009158"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2011 19:34:25 -0800
Message-Id: <cover.1296531081.git.tom.zanussi@intel.com>
Old-Date: Mon, 31 Jan 2011 21:31:21 -0600
Date: Mon, 31 Jan 2011 21:34:24 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] x86_64 compile error fix
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
X-List-Received-Date: Tue, 01 Feb 2011 03:34:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch fixes a rpm 5.4.0 error in configure.  Please pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/sitefix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/sitefix

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  site/x86_x64: add entry to fix x86_64 compile errors

 meta/site/x86_64-linux |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


