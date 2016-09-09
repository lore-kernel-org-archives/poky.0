Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F6B7E00CC0; Fri,  9 Sep 2016 05:05:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43434E00CAF
	for <poky@yoctoproject.org>; Fri,  9 Sep 2016 05:04:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 09 Sep 2016 05:04:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,304,1470726000"; d="scan'208";a="1027378399"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.28.224])
	by orsmga001.jf.intel.com with ESMTP; 09 Sep 2016 05:04:56 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Fri,  9 Sep 2016 13:04:48 +0100
Message-Id: <1473422688-17845-1-git-send-email-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Joshua Lock <joshua.g.lock@intel.com>
Subject: [PATCH] poky: add Fedora-24 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 09 Sep 2016 12:05:01 -0000

We've had a builder in the Yocto Project Autobuilder cluster
using Fedora 24 for some time now, I think it's safe to say it's
tested.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 558df62..9585540 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -81,6 +81,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-16.04 \n \
             Fedora-22 \n \
             Fedora-23 \n \
+            Fedora-24 \n \
             CentOSLinux-7.* \n \
             Debian-8.* \n \
             openSUSE-13.2 \n \
-- 
2.7.4


