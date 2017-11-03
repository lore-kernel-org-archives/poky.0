Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC270E00D14; Fri,  3 Nov 2017 06:45:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7328E00C59
	for <poky@yoctoproject.org>; Fri,  3 Nov 2017 06:45:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 03 Nov 2017 06:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,338,1505804400"; 
   d="scan'208";a="1567528"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.19.154])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2017 06:45:28 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Fri,  3 Nov 2017 13:45:25 +0000
Message-Id: <20171103134525.26149-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [PATCH] poky: remove old Fedora releases from SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 03 Nov 2017 13:45:31 -0000

* Fedora 24 reached end-of-life on 2017-08-08 and hasn't been tested in
  some time.
* Fedora 25 reaches end-of-life in Q4 2017 and is exhibiting a bug which
  makes it an extremely unreliable host OS for workers on the Yocto
  Autobuilder. For that reason we'll no longer be using this distro on the
  Yocto Autobuilder and thus cannot claim the distro is sanity tested.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 6d365e0..dda7f4f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -70,8 +70,6 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-16.04 \n \
             ubuntu-16.10 \n \
             ubuntu-17.04 \n \
-            fedora-24 \n \
-            fedora-25 \n \
             fedora-26 \n \
             centos-7 \n \
             debian-8 \n \
-- 
2.13.6


