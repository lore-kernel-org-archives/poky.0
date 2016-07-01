Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4244AE0095F; Fri,  1 Jul 2016 12:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18ADEE00948
	for <poky@yoctoproject.org>; Fri,  1 Jul 2016 12:29:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 01 Jul 2016 12:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,558,1459839600"; d="scan'208";a="987275569"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.12.103])
	by orsmga001.jf.intel.com with ESMTP; 01 Jul 2016 12:28:51 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Fri,  1 Jul 2016 20:28:47 +0100
Message-Id: <1467401327-1318-1-git-send-email-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] poky: drop unsupported distros
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
X-List-Received-Date: Fri, 01 Jul 2016 19:29:25 -0000

We're no longer building CentOS 6, Debian 7 or Fedora 21 on the
Autobuilder cluster.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 6cae44e..8390ab4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -78,12 +78,9 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-15.04 \n \
             Ubuntu-15.10 \n \
             Ubuntu-16.04 \n \
-            Fedora-21 \n \
             Fedora-22 \n \
             Fedora-23 \n \
-            CentOS-6.* \n \
             CentOS-7.* \n \
-            Debian-7.* \n \
             Debian-8.* \n \
             openSUSE-project-13.2 \n \
             "
-- 
2.7.4


