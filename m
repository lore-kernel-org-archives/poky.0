Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9474DE009A7
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 07:40:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Mar 2014 07:35:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,735,1389772800"; d="scan'208";a="507982975"
Received: from jrissane-mobl.ger.corp.intel.com ([10.237.67.31])
	by orsmga002.jf.intel.com with ESMTP; 26 Mar 2014 07:40:28 -0700
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 26 Mar 2014 16:40:26 +0200
Message-Id: <1395844826-17083-1-git-send-email-jukka.rissanen@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] meta-skeleton: Add name attribute to SRC_URI
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Mar 2014 14:40:31 -0000

The SRCREV_machine line does not work without having name=machine
attribute in SRC_URI.

This error is seen if the custom kernel recipe is used without
the name attribute:

NOTE: Error during finalise of .../linux-yocto-custom.bb
ERROR: ExpansionError during parsing .../linux-yocto-custom.bb: Failure expanding variable do_patch: ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher failure for URL: 'git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;nocheckout=1'. Please set a valid SRCREV for url ['SRCREV_default_pn-linux-yocto-custom', 'SRCREV_default', 'SRCREV_pn-linux-yocto-custom', 'SRCREV'] (possible key names are git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;nocheckout=1, or use a ;rev=X URL parameter)

Signed-off-by: Jukka Rissanen <jukka.rissanen@linux.intel.com>
---
 meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb b/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
index 42162f3..c329106 100644
--- a/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
+++ b/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
@@ -46,7 +46,7 @@ require recipes-kernel/linux/linux-yocto.inc
 
 # Override SRC_URI in a bbappend file to point at a different source
 # tree if you do not want to build from Linus' tree.
-SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;nocheckout=1"
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;nocheckout=1;name=machine"
 
 LINUX_VERSION ?= "3.4"
 LINUX_VERSION_EXTENSION ?= "-custom"
-- 
1.8.3.1


