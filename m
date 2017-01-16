Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3267E007B5; Mon, 16 Jan 2017 08:07:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66604E0078F
	for <poky@yoctoproject.org>; Mon, 16 Jan 2017 08:07:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Jan 2017 08:07:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,239,1477983600"; d="scan'208";a="1083626568"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.26.59])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2017 08:07:05 -0800
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 Jan 2017 16:06:54 +0000
Message-Id: <20170116160654.25406-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.9.3
Cc: Joshua Lock <joshua.g.lock@intel.com>
Subject: [PATCH] poky: Switch to post release name/version
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
X-List-Received-Date: Mon, 16 Jan 2017 16:07:14 -0000

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc08bb8..91f143a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "2.2"
-DISTRO_CODENAME = "morty"
+DISTRO_VERSION = "2.2+snapshot-${DATE}"
+DISTRO_CODENAME = "master"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
 
-- 
2.9.3


