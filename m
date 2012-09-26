Return-Path: <constantinx.musca@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB78E0049F
	for <poky@yoctoproject.org>; Wed, 26 Sep 2012 00:47:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Sep 2012 00:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,489,1344236400"; d="scan'208";a="149188456"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.66])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Sep 2012 00:47:28 -0700
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Wed, 26 Sep 2012 09:52:56 +0300
Message-Id: <1348642377-27555-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] *** bblayers.conf should be updated automatically
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
X-List-Received-Date: Wed, 26 Sep 2012 07:47:30 -0000

To keep things simple for this release, Paul proposed to put the bblayers.conf
merging code in sanity.bbclass. Because we don't to be invasive we do the meta-yocto
specific bblayers.conf update in a bbclass (poky-sanity) appending the code to the
check_bblayers_conf function from sanity.bbclass. After upgrading bblayers.conf we
tell the user to re-run. It would be better if we could re-read the configuration
but that is something we can address in 1.4. Every layer should make its specific
bblayers.conf updates by appending to the check_bblayers_conf bitbake function. This
patch depends on the patch sent to the oecore mailing list (sanity.bbclass: bblayers.conf
should be updated automatically).

Constantin Musca (1):
  poky-sanity.bbclass: bblayers.conf should be updated automatically

 meta-yocto/classes/poky-sanity.bbclass |   16 ++++++++++++++++
 meta-yocto/conf/distro/poky.conf       |    3 +++
 2 files changed, 19 insertions(+)
 create mode 100644 meta-yocto/classes/poky-sanity.bbclass

-- 
1.7.9.5


