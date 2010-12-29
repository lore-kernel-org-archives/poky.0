Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C33EB4C8118C
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 09:41:20 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 07:40:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="872757005"
Received: from unknown (HELO [10.255.13.209]) ([10.255.13.209])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 07:40:49 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 29 Dec 2010 09:40:03 -0600
Message-ID: <1293637203.12997.5.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: [PATCH] bblayers.conf.sample: remove meta-emenlow, v2
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
X-List-Received-Date: Wed, 29 Dec 2010 15:41:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

meta-emenlow has been moved to the meta-intel repo, so it shouldn't be
added as a default layer by bblayers.conf.  Users who want to build
the meta-emenlow layer can just add it to bblayers.conf as they would
any other layer e.g.

BBLAYERS = " \
  /home/trz/yocto/meta \
  /home/trz/yocto/meta-intel/meta-emenlow \
  "

v2 changes:

Update LCONF_VERSION as noted by Saul.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/conf/bblayers.conf.sample |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/conf/bblayers.conf.sample b/meta/conf/bblayers.conf.sample
index 3c7b6e6..b2f37c0 100644
--- a/meta/conf/bblayers.conf.sample
+++ b/meta/conf/bblayers.conf.sample
@@ -1,9 +1,8 @@
 # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
 # changes incompatibly
-LCONF_VERSION = "3"
+LCONF_VERSION = "4"
 
 BBFILES ?= ""
 BBLAYERS = " \
   ##POKYBASE##/meta \
-  ##POKYBASE##/meta-emenlow \
   "
-- 
1.7.0.4




