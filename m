Return-Path: <benjamin.esquivel@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 199B1E00938; Tue, 17 Jan 2017 08:48:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C30E00546
	for <poky@yoctoproject.org>; Tue, 17 Jan 2017 08:48:18 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2017 08:48:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,245,1477983600"; d="scan'208";a="1113991527"
Received: from besquive-mobl2.zpn.intel.com ([10.219.5.38])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2017 08:48:17 -0800
From: Benjamin Esquivel <benjamin.esquivel@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 17 Jan 2017 10:48:19 -0600
Message-Id: <20170117164819.7141-1-benjamin.esquivel@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [PATCH] adding fedora-25 to the SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 17 Jan 2017 16:48:19 -0000

I have tested Fedora 25 enough times to add it to the tested distros
list. Additionally, in Guadalajara's staging autobuilder has been
tested for some time now so it is safe to put it in.

Signed-off-by: Benjamin Esquivel <benjamin.esquivel@linux.intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc08bb8..29ec612 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -82,6 +82,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-22 \n \
             fedora-23 \n \
             fedora-24 \n \
+            fedora-25 \n \
             centos-7 \n \
             debian-8 \n \
             opensuse-13.2 \n \
-- 
2.9.3


