Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95E274C811E6
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 10:46:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Dec 2010 08:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,239,1291622400"; d="scan'208";a="367332061"
Received: from unknown (HELO localhost) ([10.255.13.217])
	by azsmga001.ch.intel.com with ESMTP; 28 Dec 2010 08:46:01 -0800
Message-Id: <c364ccadf9cb18bb017cffc198aa991f733834e8.1293522033.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293522033.git.tom.zanussi@intel.com>
References: <cover.1293522033.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Tue, 28 Dec 2010 01:04:11 -0600
Date: Tue, 28 Dec 2010 10:45:56 -0600
To: poky@yoctoproject.org
Subject: [PATCH 4/4] bblayers.conf.sample: remove meta-emenlow
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
X-List-Received-Date: Tue, 28 Dec 2010 16:46:15 -0000

meta-emenlow has been moved to the meta-intel repo, so it shouldn't be
added as a default layer by bblayers.conf.  Users who want to build
the meta-emenlow layer can just add it to bblayers.conf as they would
any other layer e.g.

BBLAYERS = " \
  /home/trz/yocto/meta \
  /home/trz/yocto/meta-intel/meta-emenlow \
  "

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/conf/bblayers.conf.sample |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/conf/bblayers.conf.sample b/meta/conf/bblayers.conf.sample
index 3c7b6e6..27e2906 100644
--- a/meta/conf/bblayers.conf.sample
+++ b/meta/conf/bblayers.conf.sample
@@ -5,5 +5,4 @@ LCONF_VERSION = "3"
 BBFILES ?= ""
 BBLAYERS = " \
   ##POKYBASE##/meta \
-  ##POKYBASE##/meta-emenlow \
   "
-- 
1.7.0.4


