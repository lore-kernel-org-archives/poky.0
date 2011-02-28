Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7767A4C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 10:24:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2011 08:24:55 -0800
Message-Id: <b9dded$i35kp6@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,240,1297065600"; d="scan'208";a="607310634"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by orsmga002.jf.intel.com with ESMTP; 28 Feb 2011 08:24:54 -0800
Old-Date: Mon, 28 Feb 2011 10:14:22 -0600
Date: Mon, 28 Feb 2011 10:24:51 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] meta-jasperforest: update kernel SRCREVs
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
X-List-Received-Date: Mon, 28 Feb 2011 16:24:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This gets us past the perf compile failure.

This is on top of the previous pull request (update-jasperforest-srcrevs-0228)
so you need to have pulled that first.

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/update-jasperforest-srcrevs-228.2
  Branch: tzanussi/update-jasperforest-srcrevs-228.2
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/update-jasperforest-srcrevs-228.2

Tom Zanussi (1):
  meta-jasperforest: update SRCREVs

 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


