Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BC0E4C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 14:41:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2011 12:41:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,447,1291622400"; d="scan'208";a="601074219"
Received: from unknown (HELO localhost) ([10.255.14.114])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2011 12:41:58 -0800
Message-Id: <cover.1297283817.git.tom.zanussi@intel.com>
Old-Date: Wed, 9 Feb 2011 14:36:57 -0600
Date: Wed, 09 Feb 2011 14:41:50 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] Fix for endless 'waiting for removable media' problem (for laverne-4.0.1)
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
X-List-Received-Date: Wed, 09 Feb 2011 20:41:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Same as before, but specific pull request for laverne-4.0.1...

This patch should fix the endless 'waiting for removable media' error
that sometimes happens when trying to boot off 'live images'.

For some reason, we started seeing this more often than usual recently
with the crown bay, but I've seen it randomly occur on other machines,
and I remember we ran into it in the past when setting up the
Cambridge demo, and I've seen other people report it sporadically as
well...

Hopefully this will fix the problem once and for all.

Please pull and apply to laverne-4.0.1.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/init-live-udev-fix-laverne-4.0.1
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/init-live-udev-fix-laverne-4.0.1

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  init-live.sh: add 'coldplug' udev trigger

 meta/recipes-core/initrdscripts/files/init-live.sh |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


